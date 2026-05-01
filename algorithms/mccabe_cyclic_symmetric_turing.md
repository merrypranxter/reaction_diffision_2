# McCabe-Style Cyclic Symmetric Turing

## Concept

Combine multi-scale Turing patterns with cyclic coordinate folding.

This makes textures that look like they belong to symmetrical organisms: diatoms, radiolaria, ornate shells, alien flowers, medallions, ritual plates.

## Coordinate fold

```txt
centered = uv - 0.5
r = length(centered)
theta = atan2(centered.y, centered.x)

theta = theta * symmetry
theta = abs(mod(theta + PI, 2PI) - PI)

folded = vec2(cos(theta), sin(theta)) * r
sampleUv = folded + 0.5
```

## Where to apply folding

### Render-only folding

Generate normal field, render through folded coordinates.

Pros:
- simple
- stable
- easy to toggle

Cons:
- simulation itself is not symmetric

### Simulation folding

Use folded coordinates while sampling neighbors.

Pros:
- symmetry affects growth
- more organism-like

Cons:
- harder
- artifacts at seams can happen

## Extra warps

- radial ripple
- angular sine drift
- log-polar twist
- noise displacement
- growth tensor bias
- scale-dependent rotation

## Artistic presets

```txt
symmetry 5: flower/echinoderm
symmetry 6: honeycomb/diatom/snowflake
symmetry 7: alien biological wrongness
symmetry 8: mandala/ritual organism
symmetry 12: ornate cathedral plankton
symmetry 13: unstable prime-organism filigree
```
