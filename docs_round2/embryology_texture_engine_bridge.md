# Next Knock: embryology_texture_engine

This is the natural next repo after `morphogenesis_beyond_gray_scott`.

## What changes?

`morphogenesis_beyond_gray_scott` makes textures that look biologically generated.

`embryology_texture_engine` would make **developmental body plans**:

- segmentation
- symmetry axes
- head/tail gradients
- limb bud zones
- tissue folds
- gastrulation-like flows
- morphogen territories
- organ-ish field regions
- fake developmental time

## Conceptual modules

### 1. Morphogen gradients

A field that says "this side is head, that side is tail" or "center vs edge."

### 2. Segmentation clock

Repeating bands that form along an axis.

### 3. Tissue folding

Coordinate warps that compress and bend regions.

### 4. Boundary organizer

A mask defining where the organism can grow.

### 5. Cell differentiation palette

Different field thresholds become different fake tissue types.

### 6. Symmetry axis

Bilateral/radial/cyclic axis that controls body-plan logic.

## Repo bridge

Outputs from this repo become inputs to embryology:

```txt
morphogenesis mask
→ tissue texture
→ developmental zone mask
→ organism surface
→ anatomy-ish pattern map
```

## Starter prompt for future repo

Build a browser-first generative embryology texture engine that creates fake developmental organism maps using morphogen gradients, segmentation clocks, tissue folding, symmetry axes, growth fields, and multi-scale Turing textures. It should produce masks, heightmaps, zone maps, and style-ready exports for alien biology, fungal embryos, diatom larvae, crystalline organisms, and ceremonial body-plan glyphs.
