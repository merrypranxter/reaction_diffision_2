# Plant Venation Module

## Visual target

Leaves, vascular fans, branching nutrient maps, capillary tissue.

## Engine stack

```txt
growth vector field
+ auxin/nutrient attractors
+ trail reinforcement
+ branching inhibition
+ Turing surface texture
```

## Simple algorithm

1. Create a leaf-shaped mask.
2. Place attractor points across the mask.
3. Grow veins from base toward attractors.
4. Remove attractors when reached.
5. Thicken main paths.
6. Apply morphogenesis texture between veins.

## Fast fake version

Use ridged noise plus gradient-following strokes, then use Turing texture as the tissue fill.

## Style targets

- art nouveau leaf lace
- alien greenhouse membranes
- fungal leaf parasite maps
- stained-glass vascular windows
- bioelectric botanical circuitry
