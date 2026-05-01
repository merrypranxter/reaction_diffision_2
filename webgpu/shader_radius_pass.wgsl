// WGSL scaffold for multi-radius activator/inhibitor sampling.
// This is a starting point, not a complete optimized shader.

struct Params {
  width: u32,
  height: u32,
  scaleCount: u32,
  frame: u32,
  stepSize: f32,
  inhibitorMultiplier: f32,
  symmetry: f32,
  growthStrength: f32,
};

@group(0) @binding(0) var inputField: texture_2d<f32>;
@group(0) @binding(1) var outputField: texture_storage_2d<rgba32float, write>;
@group(0) @binding(2) var<uniform> params: Params;

fn hash21(p: vec2<f32>) -> f32 {
  let h = dot(p, vec2<f32>(127.1, 311.7));
  return fract(sin(h) * 43758.5453123);
}

fn sampleWrapped(coord: vec2<i32>) -> f32 {
  let w = i32(params.width);
  let h = i32(params.height);
  let x = ((coord.x % w) + w) % w;
  let y = ((coord.y % h) + h) % h;
  return textureLoad(inputField, vec2<i32>(x, y), 0).r;
}

fn averageRadius(center: vec2<i32>, radius: i32) -> f32 {
  var sum = 0.0;
  var count = 0.0;

  for (var y = -radius; y <= radius; y = y + 1) {
    for (var x = -radius; x <= radius; x = x + 1) {
      let d = f32(x*x + y*y);
      if (d <= f32(radius * radius)) {
        sum = sum + sampleWrapped(center + vec2<i32>(x, y));
        count = count + 1.0;
      }
    }
  }

  return sum / max(count, 1.0);
}

@compute @workgroup_size(8, 8)
fn main(@builtin(global_invocation_id) id: vec3<u32>) {
  if (id.x >= params.width || id.y >= params.height) {
    return;
  }

  let coord = vec2<i32>(i32(id.x), i32(id.y));
  let current = sampleWrapped(coord);

  var bestAbs = 999999.0;
  var selectedResponse = 0.0;

  // Placeholder scale radii. Replace with uniform/storage buffer later.
  for (var s = 0u; s < params.scaleCount; s = s + 1u) {
    let rA = i32(1u << s);
    let rB = i32(f32(rA) * params.inhibitorMultiplier);

    let activator = averageRadius(coord, max(rA, 1));
    let inhibitor = averageRadius(coord, max(rB, 2));
    let response = activator - inhibitor;
    let a = abs(response);

    if (a < bestAbs) {
      bestAbs = a;
      selectedResponse = response;
    }
  }

  let delta = select(-params.stepSize, params.stepSize, selectedResponse > 0.0);
  let next = clamp(current + delta, 0.0, 1.0);

  textureStore(outputField, coord, vec4<f32>(next, next, next, 1.0));
}
