# Crystalline Morphology Overlay

This module turns soft biological fields into mineralized, faceted, crystalline tissue.

## Visual ingredients

- hard facets
- ridges
- angular crack lines
- geode bands
- quartz-like ribs
- opal inclusions
- calcite plates
- mineral veins

## Method

1. Start with morphogenesis field.
2. Generate Voronoi or polygonal cell field.
3. Use morphogenesis as height or mask.
4. Sharpen into facets.
5. Extract ridge lines.
6. Add iridescent/crystalline palette.

## Pseudocode

```txt
bio = multiscaleTuring(uv)
crystal = voronoiCells(uv + bio * warp)
facets = abs(crystal.edgeDistance)
ridges = gradientMagnitude(bio)
final = mix(bio, facets, mineralization)
final += ridges * ridgeStrength
```

## Presets

- quartz fungus plate
- opal embryo armor
- calcite slime cathedral
- geode tissue bloom
- crystalline lichen fossil
