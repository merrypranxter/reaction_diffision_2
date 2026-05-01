#ifndef DOMAIN_WARPING_GLSL
#define DOMAIN_WARPING_GLSL

float hash12(vec2 p) {
    vec3 p3 = fract(vec3(p.xyx) * 0.1031);
    p3 += dot(p3, p3.yzx + 33.33);
    return fract((p3.x + p3.y) * p3.z);
}

float noise2(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    vec2 u = f*f*(3.0-2.0*f);
    float a = hash12(i);
    float b = hash12(i + vec2(1.0, 0.0));
    float c = hash12(i + vec2(0.0, 1.0));
    float d = hash12(i + vec2(1.0, 1.0));
    return mix(mix(a,b,u.x), mix(c,d,u.x), u.y);
}

vec2 morphoWarp(vec2 uv, float strength, float scale, float time) {
    float x = noise2(uv * scale + time * 0.03);
    float y = noise2(uv * scale + vec2(19.1, 73.2) - time * 0.025);
    return uv + (vec2(x, y) - 0.5) * strength;
}

#endif
