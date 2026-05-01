# WebGPU Plan

The WebGPU version should use ping-pong textures or storage buffers for iterative field updates.

## Field textures

- `fieldA`: current scalar field
- `fieldB`: next scalar field
- `scaleResponse`: optional debug texture
- `normalizationStats`: min/max buffer
- `renderTarget`: color output

## Compute passes

1. Initialization pass
2. Multi-radius blur or average pass
3. Scale response pass
4. Update pass
5. Normalize pass
6. Render pass
7. Optional export readback

## Implementation options

### Option A: direct radius sampling

For each pixel and scale, sample neighbors in a circular kernel.

Pros:
- simple
- understandable

Cons:
- expensive at large radii

### Option B: separable blur pyramid

Build blurred versions of field at multiple radii.

Pros:
- faster
- more scalable

Cons:
- more passes and buffers

### Option C: mipmap-ish scale approximation

Use mip levels for broad averages.

Pros:
- efficient

Cons:
- less precise

## First target

Implement Option A for clarity, then optimize.

## Uniforms

```js
{
  width,
  height,
  scaleCount,
  radiiA,
  radiiB,
  step,
  time,
  symmetry,
  domainWarp,
  growthStrength,
  contrast
}
```

## WebGPU notes

- Use `rgba32float` textures for safety at first.
- Later optimize to `r16float`.
- Keep CPU fallback in `/p5`.
- Add a browser support warning.
