#ifndef FIELD_EDGES_GLSL
#define FIELD_EDGES_GLSL

float fieldEdge(sampler2D tex, vec2 uv, vec2 texel) {
    float c = texture(tex, uv).r;
    float l = texture(tex, uv - vec2(texel.x, 0.0)).r;
    float r = texture(tex, uv + vec2(texel.x, 0.0)).r;
    float d = texture(tex, uv - vec2(0.0, texel.y)).r;
    float u = texture(tex, uv + vec2(0.0, texel.y)).r;
    return length(vec2(r - l, u - d));
}

float contourLines(float v, float count, float thickness) {
    float line = abs(fract(v * count) - 0.5);
    return 1.0 - smoothstep(0.0, thickness, line);
}

#endif
