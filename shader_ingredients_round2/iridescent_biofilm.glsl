#ifndef IRIDESCENT_BIOFILM_GLSL
#define IRIDESCENT_BIOFILM_GLSL

vec3 spectralBiofilm(float height, float angle, float curvature) {
    float t = height * 4.0 + angle * 1.7 + curvature * 2.5;
    vec3 a = vec3(0.55, 0.45, 0.65);
    vec3 b = vec3(0.45, 0.45, 0.45);
    vec3 c = vec3(1.0, 1.0, 1.0);
    vec3 d = vec3(0.00, 0.20, 0.40);
    return a + b * cos(6.28318530718 * (c * t + d));
}

#endif
