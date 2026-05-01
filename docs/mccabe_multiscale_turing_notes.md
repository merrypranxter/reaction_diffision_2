# McCabe-Inspired Multi-Scale Turing Notes

Jonathan McCabe's cyclic symmetric multi-scale Turing patterns are highly relevant for generative art because they combine:

- multiple spatial scales
- activator/inhibitor competition
- local scale selection
- cyclic/radial symmetry
- high ornamental density
- biological plausibility without literal biology

This repo does not need to copy any one implementation exactly. The goal is an art-applicable family of techniques.

## Core algorithm concept

Maintain a grayscale scalar field.

For each pixel and each scale:

1. compute a local average at a smaller radius
2. compute a local average at a larger radius
3. subtract inhibitor from activator
4. measure response magnitude
5. choose the scale with the smallest or strongest useful response
6. update the pixel slightly up or down
7. normalize after each pass

## Why it works visually

Different pattern sizes compete. Tiny details appear where small scales dominate; large bands appear where large scales dominate. The image feels like it has biological hierarchy.

## Cyclic symmetry layer

Before sampling or rendering, fold coordinates around a center:

- convert to polar
- multiply angle by symmetry count
- fold angle into sector
- sample field through folded coordinates

This creates:
- diatom-like radial structure
- flower mandalas
- shell cross-sections
- stained-glass organisms
- fake sacred biology

## Useful parameters

```txt
scale_count
activator_radii[]
inhibitor_radii[]
step_size
symmetry_order
radial_warp
angular_warp
normalization_strength
contrast_curve
growth_bias_strength
domain_noise_strength
```

## Visual presets

```txt
diatom halo engine
fungal cathedral bloom
embryo stripe weather
slime mandala bruise
crystalline tissue mask
art nouveau vascular lace
mesoamerican cell glyph field
alien fish skin topology
```
