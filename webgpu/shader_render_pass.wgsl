// WGSL render scaffold for coloring a scalar morphogenesis field.
// Copilot should wire this into a fullscreen triangle render pipeline.

struct Params {
  width: f32,
  height: f32,
  time: f32,
  symmetry: f32,
  contrast: f32,
};

@group(0) @binding(0) var fieldTex: texture_2d<f32>;
@group(0) @binding(1) var fieldSampler: sampler;
@group(0) @binding(2) var<uniform> params: Params;

fn cyclicFold(uv: vec2<f32>, symmetry: f32) -> vec2<f32> {
  let p = uv - vec2<f32>(0.5, 0.5);
  let r = length(p);
  var a = atan2(p.y, p.x);
  let tau = 6.28318530718;
  a = a * symmetry;
  a = abs(fract(a / tau + 0.5) * tau - 3.14159265359);
  return vec2<f32>(cos(a), sin(a)) * r + vec2<f32>(0.5, 0.5);
}

fn palette(t: f32) -> vec3<f32> {
  let a = vec3<f32>(0.55, 0.45, 0.65);
  let b = vec3<f32>(0.45, 0.45, 0.35);
  let c = vec3<f32>(1.0, 1.0, 1.0);
  let d = vec3<f32>(0.00, 0.18, 0.33);
  return a + b * cos(6.2831853 * (c * t + d));
}

@fragment
fn fs_main(@location(0) uvIn: vec2<f32>) -> @location(0) vec4<f32> {
  let uv = cyclicFold(uvIn, max(params.symmetry, 1.0));
  let v = textureSample(fieldTex, fieldSampler, uv).r;
  let shaped = pow(clamp(v, 0.0, 1.0), params.contrast);
  let col = palette(shaped + params.time * 0.02);
  return vec4<f32>(col, 1.0);
}
