#ifndef ORGANIC_PALETTE_GLSL
#define ORGANIC_PALETTE_GLSL

vec3 cosinePalette(float t, vec3 a, vec3 b, vec3 c, vec3 d) {
    return a + b * cos(6.28318530718 * (c * t + d));
}

vec3 fungalOpal(float t) {
    return cosinePalette(
        t,
        vec3(0.58, 0.42, 0.66),
        vec3(0.45, 0.38, 0.35),
        vec3(1.00, 1.00, 1.00),
        vec3(0.02, 0.18, 0.32)
    );
}

vec3 turquoiseObsidianMaize(float t) {
    vec3 dark = vec3(0.02, 0.015, 0.01);
    vec3 turquoise = vec3(0.0, 0.8, 0.75);
    vec3 maize = vec3(1.0, 0.72, 0.2);
    return mix(mix(dark, turquoise, smoothstep(0.15, 0.65, t)), maize, smoothstep(0.65, 1.0, t));
}

#endif
