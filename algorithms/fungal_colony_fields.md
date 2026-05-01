# Fungal Colony Fields

Fungal growth can be approximated as radial expansion plus branching plus nutrient response.

## Visual ingredients

- expanding circular fronts
- fuzzy filament edges
- rings from growth pulses
- nutrient islands
- branching mycelial paths
- colony collision boundaries
- spore halos

## Field stack

```txt
radial distance
+ noise-warped rings
+ multi-scale Turing texture
+ branching vein mask
+ edge fuzz
+ nutrient spots
```

## Pseudocode

```txt
center = colony seed
r = distance(uv, center)
front = smoothstep(radius, radius - softness, r)

rings = sin(r * ringFrequency - time * speed)
texture = multiscaleTuring(uv)
branches = ridgeNoise(uv)

fungalField = front * texture
fungalField += rings * ringStrength
fungalField += branches * branchStrength
```

## Presets

- oyster mycelium lace
- cordyceps nerve bloom
- lichen crust territory
- black mold cathedral
- fairy ring topography
- spore mandala weather
