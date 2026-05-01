#ifndef HEIGHTMAP_NORMALS_GLSL
#define HEIGHTMAP_NORMALS_GLSL

vec3 normalFromHeight(sampler2D tex, vec2 uv, vec2 texel, float strength) {
    float hL = texture(tex, uv - vec2(texel.x, 0.0)).r;
    float hR = texture(tex, uv + vec2(texel.x, 0.0)).r;
    float hD = texture(tex, uv - vec2(0.0, texel.y)).r;
    float hU = texture(tex, uv + vec2(0.0, texel.y)).r;
    vec3 n = normalize(vec3((hL - hR) * strength, (hD - hU) * strength, 1.0));
    return n;
}

#endif
