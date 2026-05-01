# Screenprint-Safe Morphogenesis

Because beautiful microscopic texture can turn into clogged-shirt bullshit.

## Rules for small prints

- Avoid hairline pores.
- Avoid dense micro-halftone fields below production-safe size.
- Use fewer thresholds.
- Convert tiny texture into larger implied texture.
- Keep negative spaces open.
- Use contour bands instead of noisy gray.
- For left chest, simplify aggressively.

## One-color white ink on black shirt

Use morphogenesis as white ink shape:

```txt
white ink = high-value mask + selected contours
shirt = black background
```

Avoid:
- giant rectangular ink boxes
- gray gradients
- tiny pore dust
- fragile isolated specks

## Three-color print

Suggested separations:

```txt
color 1: dark base contour/ridges
color 2: mid cellular territories
color 3: highlight pores/rings
```

## Useful export layers

- `ink_shape_solid.png`
- `large_contours.png`
- `safe_pores.png`
- `ridge_highlights.png`
- `territory_fill.png`
