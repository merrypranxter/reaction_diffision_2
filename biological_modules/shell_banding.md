# Shell Banding Module

Shells are incredible because they record growth history as visible pattern.

## Visual idea

The shell surface is a time scroll. Each new growth edge receives pigment according to local oscillator rules.

## Fake browser version

Use polar or logarithmic coordinates:

```txt
growthTime = radius
angle = atan2(y, x)
bands = sin(radius * frequency + noise(angle, radius))
spots = turing(angle, radius)
```

## Controls

```txt
bandFrequency
growthJitter
angularNoise
spiralTwist
pigmentThreshold
ridgeHeight
```

## Visual presets

- cone snail warning glyphs
- nautilus spectral memory
- cowrie porcelain morphogens
- ammonite fossil interference
- alien shell calendar
