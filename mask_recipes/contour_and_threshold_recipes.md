# Contour and Threshold Recipes

## Soft biological mask

```txt
mask = smoothstep(low, high, field)
```

Use for:
- opacity
- color blending
- tissue zones

## Hard organism cells

```txt
cell = field > threshold
```

Use for:
- screenprint shape layers
- glyph territories
- pores

## Contour lace

```txt
contour = abs(fract(field * contourCount) - 0.5)
line = contour < thickness
```

Use for:
- art nouveau
- topographic maps
- shell rings

## Ridge extraction

```txt
ridge = abs(field - blur(field, radius))
```

Use for:
- veins
- ribs
- crystalline seams

## Pore mask

```txt
pores = field < threshold AND radialMask > edgeCutoff
```

Use for:
- diatoms
- sponge
- coral
- perforated shells

## Mesoamerican stepped field

```txt
level = floor(field * levels) / levels
edge = gradient(level)
```

Use for:
- glyph blocks
- ceremonial bands
- carved pattern layers
