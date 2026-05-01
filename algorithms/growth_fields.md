# Growth Fields

A growth field is a vector field that biases how morphogenesis develops.

Instead of every pixel updating equally, the field can stretch, smear, branch, or orient the pattern.

## Types

### Radial growth

Vectors point away from center.

Good for:
- fungal colonies
- embryos
- flowers
- diatoms
- impact blooms

### Curl growth

Vectors circulate.

Good for:
- shells
- vortices
- psychedelic tissue
- spiral organisms

### Nutrient gradient

Vectors point toward a nutrient source.

Good for:
- slime mold
- fungal searching
- root systems
- chemical attraction

### Anisotropic tissue

Diffusion is stronger in one direction than another.

Good for:
- stripes
- stretched skin
- vascular flow
- hair/fiber

## Visual formula

```txt
base field update
+ directional sample offset
+ anisotropic blur
+ growth speed mask
+ boundary pressure
```

## Pseudocode

```txt
direction = growthVector(uv, time)
ahead = sample(field, uv + direction * distance)
behind = sample(field, uv - direction * distance)
bias = ahead - behind

next = baseTuringUpdate + bias * growthStrength
```
