# Export Pipeline

The morphogenesis engine should export useful intermediate artifacts, not just finished pretty pictures.

## Export types

### 1. Grayscale mask

Single-channel value field.

Use for:
- screenprint texture masks
- layer opacity
- displacement masks
- prompt reference maps
- p5 shader lookup textures

### 2. Heightmap

Field interpreted as surface height.

Use for:
- fake embossing
- crystalline ridges
- normal maps
- diatom glass relief
- shell carving

### 3. Contour SVG

Thresholded isolines.

Use for:
- art nouveau linework
- Mesoamerican block ornament
- vector-friendly decorative ribs
- screenprint-safe simplification

### 4. Gradient map

Direction and magnitude of field changes.

Use for:
- structural color
- anisotropic highlights
- vein extraction
- growth direction analysis

### 5. JSON preset

Save parameters.

Suggested schema:
```json
{
  "engine": "multiscale_turing",
  "width": 1024,
  "height": 1024,
  "seed": 12345,
  "scales": [2, 4, 8, 16, 32],
  "inhibitorMultiplier": 2.0,
  "step": 0.015,
  "iterations": 200,
  "symmetry": 8,
  "domainWarp": 0.2,
  "growthBias": 0.35,
  "palette": "fungal_opal"
}
```

## Pipeline sketch

```txt
generate scalar field
→ normalize
→ apply contrast curve
→ optional symmetry render
→ export:
   - mask.png
   - height.png
   - color.png
   - preset.json
   - contours.svg
```
