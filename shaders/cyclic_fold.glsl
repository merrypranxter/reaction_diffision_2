#ifndef CYCLIC_FOLD_GLSL
#define CYCLIC_FOLD_GLSL

vec2 cyclicFold(vec2 uv, float symmetry) {
    vec2 p = uv - 0.5;
    float r = length(p);
    float a = atan(p.y, p.x);
    float tau = 6.28318530718;
    a *= max(symmetry, 1.0);
    a = abs(mod(a + 3.14159265359, tau) - 3.14159265359);
    return vec2(cos(a), sin(a)) * r + 0.5;
}

#endif
