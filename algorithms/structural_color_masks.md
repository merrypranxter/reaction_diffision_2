# Structural Color Masks

Structural color comes from physical interactions of light with microscopic structures. For art, fake it with field direction, gradient, curvature, and thin-film palettes.

## Inputs

- morphogenesis scalar field
- gradient direction
- curvature estimate
- heightmap
- view angle
- optional noise

## Outputs

- rainbow/oil-slick bands
- beetle shell shimmer
- opal dots
- soap film interference
- blue-green morpho butterfly flashes
- silica iridescence

## Fake structural color formula

```txt
height = field
gradient = normal from height
angle = dot(normal, viewDirection)
band = sin(height * frequency + angle * angleStrength)
color = palette(band + curvature * curveStrength)
```

## Mask strategy

Use morphogenesis field to decide where color appears:

```txt
if field > threshold:
  apply iridescence
else:
  dark velvet / transparent / base material
```
