# McCabe-Inspired WebGPU Implementation Plan

## Phase 1 — scalar field

Create a floating-point texture with random noise.

## Phase 2 — one compute pass

Each invocation handles one pixel.

For each scale:
- compute activator average
- compute inhibitor average
- response = activator - inhibitor
- choose best response scale

Update pixel:
```txt
next = current + sign(response) * step
```

## Phase 3 — normalization

Compute min/max in reduction pass, then normalize.

Simpler first version:
- approximate with contrast curve instead of true min/max
- clamp to 0..1

## Phase 4 — cyclic render

Render pass folds coordinates by symmetry before sampling field.

## Phase 5 — debug views

- selected scale color
- response magnitude
- raw field
- threshold mask
- heightmap
- contour-ish edge view

## Phase 6 — export

Read canvas:
- color PNG
- grayscale mask PNG

Read preset:
- JSON uniform values

## TODO for Copilot

Create:
- `webgpu/index.html`
- `webgpu/main.js`
- `webgpu/shaders/update.wgsl`
- `webgpu/shaders/render.wgsl`
- `webgpu/shaders/init.wgsl`
