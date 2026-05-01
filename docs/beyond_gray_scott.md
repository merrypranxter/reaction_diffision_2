# Beyond Gray-Scott

Gray-Scott reaction diffusion is usually the first magic trick: two chemicals diffuse, feed, and kill each other until spots, worms, and coral-like textures emerge.

This repo treats Gray-Scott as the kindergarten finger-painting goblin. Useful, gorgeous, but not the final boss.

## Limitations of basic Gray-Scott

- often produces similar blob/worm motifs
- not inherently multi-scale
- limited direct control over symmetry
- pattern types depend heavily on feed/kill tuning
- can be hard to combine with ornamental style systems
- lacks obvious growth direction unless extended

## Expansion directions

### 1. Multi-scale Turing

Instead of one blur radius or diffusion scale, run several activator/inhibitor passes at different radii. Each pixel chooses or blends between scales.

This creates nested organisms: tiny cells inside larger tissues inside larger bands.

### 2. Cyclic symmetry

Sample the field through angular folds or mirrored sectors. This turns texture into body plan.

Good for:
- diatoms
- radiolaria
- mandalas
- flower-like morphologies
- sacred organism medallions

### 3. Growth fields

Add vector fields that bias update direction.

Good for:
- veins
- stretched stripes
- flowing tissue
- hairlike fungal filaments
- embryonic folding

### 4. Style masks

Morphogenesis fields should export masks that other systems can consume.

Examples:
- art nouveau linework from high-gradient contours
- Mesoamerican glyph blocks from quantized cellular territories
- crystalline facets from Voronoi-like hardening of soft fields
- structural color from gradient angle and curvature

## A useful mental model

Gray-Scott asks:

> What pattern happens when two chemicals fight?

This repo asks:

> What kind of fake organism can this field become if chemicals, scale, symmetry, growth, and ornament all get to misbehave at once?
