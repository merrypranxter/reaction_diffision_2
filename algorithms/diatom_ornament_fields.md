# Diatom Ornament Fields

Diatoms are microscopic silica organisms with absurdly gorgeous radial and bilateral ornament. They are basically nature's tiny math jewelry.

## Visual ingredients

- radial symmetry
- pores
- ribs
- silica glass texture
- concentric rings
- bilateral axes
- lace-like perforation
- cellular grids
- frustule shells

## Engine approach

1. Generate radial/cyclic multi-scale Turing field.
2. Quantize into pore/rib regions.
3. Extract high-gradient contours.
4. Add hard silica-like highlights.
5. Use structural-color or glass palette.

## Pseudocode

```txt
uv = cyclicFold(uv, symmetry)
base = multiscaleTuring(uv)
rings = sin(distance(uv, center) * ringFrequency)
pores = threshold(base + rings)
ribs = gradientMagnitude(base)
diatom = combine(pores, ribs, radialMask)
```

## Presets

- glass halo plankton
- silica cathedral wheel
- opal frustule mandala
- alien microscope snowflake
- radiolarian ceremonial shield
