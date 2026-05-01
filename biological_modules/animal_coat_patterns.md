# Animal Coat Pattern Module

## Visual target

Spots, stripes, rosettes, saddle bands, speckles, rings, countershading.

## Engine stack

```txt
multi-scale Turing
+ anisotropic blur
+ directional growth tensor
+ threshold/contour extraction
+ palette mapping
```

## Parameters

```txt
spotScale
stripeStretch
anisotropyAngle
thresholdSoftness
rosetteRingStrength
countershadeGradient
```

## Presets

### leopard cell weather

Small-to-medium Turing spots with dark contour rings and golden tissue background.

### zebra drift membrane

Directional anisotropic update that stretches field into long stripes.

### alien tiger fungus

Large stripes broken by fungal speckle and vein-ridge overlays.

### ocelot opal skin

Rosette threshold plus structural-color interior shimmer.

## Export masks

- `spot_centers.png`
- `stripe_bands.png`
- `rosette_rims.png`
- `coat_height.png`
