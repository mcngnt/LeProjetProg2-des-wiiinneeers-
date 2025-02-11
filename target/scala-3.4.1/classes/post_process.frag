uniform sampler2D texture;
uniform vec2 u_resolution;

uniform vec3 u_plainCol;
uniform vec3 u_desertCol;
uniform vec3 u_oceanCol;

uniform vec2 u_time;

// uniform int u_isEarthquake;
// uniform int u_isSandstorm;
// uniform int u_isOilSpill;

uniform vec3 u_Disaster;

vec2 curve_uv(vec2 uv)
{
    uv = uv * 2.0 - 1.0;
    vec2 offset = abs( uv.yx ) / vec2( 9.0, 6.0 );
    uv = uv + uv * offset * offset;
    uv = uv * 0.5 + 0.5;
    return uv;
}

float vignette(vec2 uv )
{    
    float vignette = uv.x * uv.y * ( 1.0 - uv.x ) * ( 1.0 - uv.y );
    vignette = clamp( pow( 15.0 * vignette, 0.2 ), 0.0, 1.0 );
    return vignette;
}

float get_air_wave(vec2 uv, vec4 param, float rep, float time, float wrap)
{
    uv *= wrap;
    float val = abs(param.z / (uv.y + param.y * sin(uv.x / param.x + param.w)));
    float mask = 0.0;
    uv.x += time;
    uv.x = mod(uv.x,rep) - rep * .5;
    val += -2./dot(uv,uv);
    uv.x += rep/2.;
    val += -2./dot(uv,uv);
    uv.x -= rep/4.;
    mask = rep/2./dot(uv,uv);
    val = step(val, .5) + step(mask, 1.);
    return step(val,.5);
}

vec2 hash(vec2 p)
{
    p = vec2(dot(p,vec2(127.1,311.7)),
             dot(p,vec2(269.5,183.3)));
    return fract(sin(p)*18.5453);
}


float voronoi( in vec2 x )
{
    vec2 n = floor(x);
    vec2 f = fract(x);

    vec3 m = vec3(8.0);
    for(int j=-1; j <= 1; j++)
    for(int i=-1; i <= 1; i++)
    {
        vec2 g = vec2(float(i), float(j));
        vec2 o = hash(n + g);
        vec2 r = g - f + (0.5+0.5*sin(u_time.x+6.2831*o));
        float d = dot(r, r);
        if(d<m.x)
        {
            m = vec3(d, o);
        }
    }

    return sqrt(m.x);
}


void main() {
    
    vec2 uv = gl_TexCoord[0].xy;

    uv = curve_uv(uv);

    float v = vignette(uv);


    vec4 color = texture2D(texture, uv);

    if(length(color.xyz - u_desertCol) <= 0.3 && (u_Disaster.y == 1.0))
    {
        vec4 params = vec4(.65,.17,.108,0.5);
        color += vec4(0.3) * get_air_wave(uv + vec2(0.5, -0.8), params, 10., u_time.x * 17.0, 19.0);
        color += vec4(0.3) * get_air_wave(uv + vec2(1.4, -0.95), params, 9., u_time.x * 19.0, 24.0);
        color += vec4(0.3) * get_air_wave(uv + vec2(90.3, -0.3), params, 12., u_time.x * 14.5, 22.0);
        color += vec4(0.3) * get_air_wave(uv + vec2(30.2, -0.5), params, 11., u_time.x * 16.7, 21.0);
        color += vec4(0.3) * get_air_wave(uv + vec2(47.1, -0.1), params, 14., u_time.x * 17.2, 22.0);
    }

    if(length(color.xyz - u_plainCol) <= 0.3 && (u_Disaster.x == 1.0))
    {
        float v = voronoi( (14.0+6.0*sin(0.2*u_time.x))*uv * 0.9f );
        // if(v < 0.8)
        // {
        //     v = 0.0;
        // }
        color -= vec4(0.1) * v;
    }

    if(length(color.xyz - u_oceanCol) <= 0.3)
    {
        if(u_Disaster.z == 1.0)
        {
            color *= 0.3;
        }
        vec4 params = vec4(.45,.07,.098,0.5);
        color += vec4(0.1) * get_air_wave(uv + vec2(3.5, -0.82), params, 12., u_time.x * 3.0, 30.0);
        color += vec4(0.1) * get_air_wave(uv + vec2(1.4, -0.91), params, 10., u_time.x * 3.5, 29.3);
        color += vec4(0.1) * get_air_wave(uv + vec2(70.3, -0.33), params, 14., u_time.x * 2.5, 26.0);
        color += vec4(0.1) * get_air_wave(uv + vec2(20.2, -0.512), params, 12., u_time.x * 2.7, 29.0);
        color += vec4(0.1) * get_air_wave(uv + vec2(17.1, -0.12), params, 11., u_time.x * 2.0, 28.0);
    }


    // color = mix(color,vec4(u_plainCol,1.0), 0.5);

    gl_FragColor = vec4(color.xyz * v, 1.0);
}


