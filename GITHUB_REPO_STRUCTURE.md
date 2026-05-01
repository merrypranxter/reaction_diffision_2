# GITHUB REPO STRUCTURE — morphogenesis_beyond_gray_scott

This repo should be organized as a research-backed generative art engine.

## Top-level folders

## `/docs`

Conceptual references and visual translation guides.

Suggested files:
- `morphogenesis_overview.md`
- `beyond_gray_scott.md`
- `turing_1952_notes.md`
- `mccabe_multiscale_turing_notes.md`
- `visual_taxonomy.md`
- `biological_pattern_sources.md`
- `export_pipeline.md`
- `repo_interoperability.md`

## `/algorithms`

Algorithm descriptions in plain language and pseudocode.

Suggested files:
- `gray_scott_baseline.md`
- `multiscale_turing.md`
- `mccabe_cyclic_symmetric_turing.md`
- `growth_fields.md`
- `anisotropic_diffusion.md`
- `embryology_segmentation.md`
- `fungal_colony_fields.md`
- `slime_mold_coupling.md`
- `diatom_ornament_fields.md`
- `structural_color_masks.md`
- `crystalline_morphology_overlay.md`

## `/webgpu`

WebGPU implementation scaffolds, compute shader plans, and JS entry points.

Suggested files:
- `README_WEBGPU.md`
- `mccabe_multiscale_turing_plan.md`
- `compute_pipeline_notes.md`
- `field_pingpong_buffers.js`
- `shader_radius_pass.wgsl`
- `shader_update_pass.wgsl`
- `shader_render_pass.wgsl`

## `/p5`

CPU/p5.js fallback sketches.

Suggested files:
- `multiscale_turing_cpu.html`
- `cyclic_symmetry_turing_cpu.html`
- `growth_field_texture_cpu.html`

## `/shaders`

GLSL/WGSL snippets and portable shader modules.

Suggested files:
- `morphogenesis_noise.glsl`
- `cyclic_fold.glsl`
- `organic_palette.glsl`
- `heightmap_normals.glsl`
- `mask_export_notes.md`

## `/style_bridges`

Instructions for exporting masks into other style systems.

Suggested files:
- `art_nouveau_bridge.md`
- `mesoamerican_bridge.md`
- `crystalline_bridge.md`
- `fungi_bridge.md`
- `slime_mold_bridge.md`
- `diatom_bridge.md`
- `structural_color_bridge.md`

## `/prompts`

AI-art and code-agent prompt scaffolds.

Suggested files:
- `image_prompt_modules.md`
- `shader_prompt_modules.md`
- `copilot_tasks.md`
- `style_blend_recipes.md`

## `/exports`

Output folder for generated PNG masks, JSON field settings, SVG contours, heightmaps, palettes.

Suggested files:
- `.gitkeep`
- `export_schema.json`

## `/examples`

Single-file demos and sample compositions.

Suggested files:
- `morphogenesis_demo_single_file.html`
- `README_EXAMPLES.md`

## Recommended expansion path

1. Build CPU prototype.
2. Add cyclic symmetry.
3. Add multi-scale scale-selection.
4. Add growth vector field.
5. Add WebGPU compute version.
6. Add mask exporter.
7. Add style bridges.
8. Add prompt vocabulary.
9. Add high-resolution render mode.
10. Add biological pattern presets.
