# Multi-Scale Turing Algorithm

## Plain-language version

Each pixel asks several neighborhoods:

> Am I brighter or darker than my surroundings at this scale?

But it asks this at many scales. Tiny neighborhoods, medium neighborhoods, huge neighborhoods. Then it chooses the scale that gives the most interesting push.

The result is a field where multiple biological pattern sizes compete.

## Pseudocode

```txt
initialize field with noise

for each iteration:
  for each pixel:
    bestScale = 0
    bestResponse = large number

    for each scale:
      activator = average(field, radiusA[scale])
      inhibitor = average(field, radiusB[scale])
      response = activator - inhibitor

      if abs(response) < bestResponse:
        bestResponse = abs(response)
        bestScale = scale
        selectedResponse = response

    if selectedResponse > 0:
      next[pixel] = field[pixel] + step
    else:
      next[pixel] = field[pixel] - step

  normalize(next)
  swap(field, next)
```

## Notes

Many implementations choose the smallest absolute response scale because it creates stable scale boundaries. Others use strongest response. For art, both are useful.

## Parameters

```txt
scale_count: 5 to 12
activator_radius: [1, 2, 4, 8, 16, 32]
inhibitor_radius: activator * 2
step: 0.005 to 0.03
iterations: 50 to 1000
normalization: every frame or every N frames
```

## Visual tuning

- More scales: richer biological hierarchy.
- Bigger radii: larger islands and tissue bands.
- Smaller step: smoother development.
- Higher step: crunchy cellular contrast.
- More iterations: stronger organisms, but risk flattening.
