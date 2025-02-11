uniform vec2 u_globalResolution;
uniform vec2 u_resolution;
uniform vec2 u_pos;

uniform vec3 u_tlCol;
uniform vec3 u_trCol;
uniform vec3 u_blCol;
uniform vec3 u_brCol;

vec3 grad(vec3 color1, vec3 color2, vec3 color3, vec3 color4, vec2 uv)
{
    float smoothStepX = smoothstep(0.0, 1.0, uv.x);
    float smoothStepY = smoothstep(0.0, 1.0, uv.y);

    vec3 interpolatedVertical1 = mix(color1, color2, smoothStepY);
    vec3 interpolatedVertical2 = mix(color3, color4, smoothStepY);

    return mix(interpolatedVertical1, interpolatedVertical2, smoothStepX);
}
 

float disc(float f)
{
    float nb_dither = 6.0;
    return floor(f * nb_dither) / nb_dither;
}

vec4 disc(vec4 v)
{
    return vec4(disc(v.x), disc(v.y), disc(v.z), v.w);
}


void main()
{
    vec2 pos = vec2((gl_FragCoord.x - u_pos.x)/u_resolution.x, ((u_globalResolution.y - u_pos.y) - gl_FragCoord.y)/u_resolution.y);

    vec4 gradCol = vec4(grad(u_tlCol, u_blCol,u_trCol, u_brCol,pos), 1.0);
    vec4 dithered = disc(gradCol);

    gl_FragColor = gl_Color * dithered;
}