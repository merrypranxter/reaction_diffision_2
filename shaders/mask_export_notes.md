# Mask Export Notes

In browser demos, use canvas export first.

Future exports:
- grayscale mask
- thresholded black/white mask
- high-gradient edge mask
- heightmap
- fake normal map
- contour SVG

## Useful thresholds

```txt
soft mask: smoothstep(0.35, 0.65, field)
hard cells: field > 0.5
ridges: abs(field - neighborhoodAverage) > threshold
contours: abs(fract(field * contourCount) - 0.5)
```
