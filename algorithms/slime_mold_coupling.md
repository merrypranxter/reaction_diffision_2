# Slime Mold Coupling

Use slime mold logic to add path intelligence to Turing textures.

## Concept

A Turing field creates tissue texture. A slime field creates movement memory.

Together:
- the Turing field becomes the skin
- the slime field becomes veins/trails/nerves

## Ingredients

- agent trails
- chemoattractant map
- evaporation
- diffusion
- trail reinforcement
- Turing mask influence

## Coupling ideas

### Turing guides slime

Agents prefer moving along high-gradient morphogenesis lines.

### Slime guides Turing

Trail density becomes activator or inhibitor.

### Mutual coupling

Both fields influence each other each frame.

## Pseudocode

```txt
for each agent:
  sense left/forward/right in trail field
  also sense turing gradient
  turn toward combined signal
  move
  deposit trail

trail diffuses and evaporates

turingActivator += trail * couplingStrength
run turing update
```
