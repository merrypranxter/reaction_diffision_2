# morphogenesis_beyond_gray_scott

A generative-art research repo for going past basic Gray-Scott reaction diffusion into biologically-flavored texture engines: multi-scale Turing fields, McCabe-style cyclic symmetric patterns, growth tensors, embryology-ish segmentation, fungal/mycelial expansion, slime-mold logic, diatom ornament, structural color masks, crystalline overlays, and export pipelines for other style repos.

This is not just "pretty blobs." This is a little wet engine for growing fake organisms out of math.

## Core idea

Gray-Scott is one doorway. This repo treats morphogenesis as a whole family of visual engines:

- reaction-diffusion as chemical texture
- Turing instabilities as animal/fungal/skin/bark/diatom motifs
- multi-radius activator/inhibitor passes as organic pattern selection
- cyclic symmetry as ornamental body plans
- growth fields as directional morphing pressure
- masks exported into external style systems:
  - `art_nouveau_style`
  - `mesoamerican_style`
  - `crystalline`
  - `fungi`
  - `slime_molds`
  - `structural_color`
  - `diatomic`
  - `cellular_automata`

## Repo goals

1. Provide runnable browser sketches.
2. Provide WebGPU-first algorithm scaffolding.
3. Provide CPU/p5.js fallback sketches.
4. Create reusable morphogenesis vocabulary for prompts and shaders.
5. Export masks, heightmaps, color maps, and ornament maps.
6. Let Copilot expand this into a full library.

## Suggested repo structure

```txt
morphogenesis_beyond_gray_scott/
  README.md
  GITHUB_REPO_STRUCTURE.md
  COPILOT_AGENT.md
  docs/
  algorithms/
  sketches/
  shaders/
  webgpu/
  p5/
  exports/
  style_bridges/
  prompts/
  data/
  examples/
```

## Fast start

Open either of these directly in a browser:

```txt
p5/multiscale_turing_cpu.html
examples/morphogenesis_demo_single_file.html
```

For WebGPU experiments, start with:

```txt
webgpu/README_WEBGPU.md
webgpu/mccabe_multiscale_turing_plan.md
```

## What this repo should become

A modular morphogenesis engine where pattern fields can be layered like biological hallucinations:

```txt
seed field
→ multi-scale activator/inhibitor
→ cyclic symmetry folding
→ growth direction tensor
→ contour extraction
→ mask export
→ style bridge
→ final art shader or prompt
```

## First build target

Implement a McCabe-inspired multi-radius activator/inhibitor engine:

- multiple blur radii
- compare local activation vs inhibition
- pick the scale with strongest response
- update field by small signed increments
- normalize
- optionally apply cyclic symmetry and/or growth bias
- export as masks

## Artistic target

Textures should feel like:

- fungal bloom maps
- embryonic segmentation
- radiolarian ornament
- diatom glass ribs
- slime mold trails
- animal coat morphs
- crystalline biological armor
- art nouveau vascular lace
- Mesoamerican organism-glyph mosaics
- alien cell wallpaper for a cathedral under a microscope
