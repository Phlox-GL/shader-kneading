
precision mediump float;

varying vec2 vUvs;

float rand(vec2 co) {
    return fract(sin(dot(co * 1000.0, vec2(12.9898, 78.233))) * 43758.5453) / 10.;
}

// https://gist.github.com/DonKarlssonSan/f87ba5e4e5f1093cb83e39024a6a5e72
#define cx_mul(a, b) vec2(a.x*b.x-a.y*b.y, a.x*b.y+a.y*b.x)
// #define cx_div(a, b) vec2(((a.x*b.x+a.y*b.y)/(b.x*b.x+b.y*b.y)),((a.y*b.x-a.x*b.y)/(b.x*b.x+b.y*b.y)))

float square(float a) {
  return a * a;
}

const float PI = 3.14159265358979323846;

float normal_distribution(float d, float sigma) {
  return exp(-0.5 * square(d) / square(sigma)) / sigma / sqrt(2.0 * PI);
}

vec2 bend(vec2 p, vec2 center, float radian) {
    vec2 d = p - center;
    float dyn_radian = radian * normal_distribution(length(d), 0.2) * 0.7;
    vec2 rot = vec2(
        cos(dyn_radian),
        sin(dyn_radian)
    );
    vec2 p2 = center + cx_mul(d, rot);

    return p2;
}

vec2 swipe(vec2 p, vec2 center, vec2 direction) {
    vec2 d = p - center;
    float v = dot(d, direction);
    float dyn_strength = normal_distribution(length(v), 0.4) * 0.04;
    vec2 p2 = p + direction * dyn_strength;

    return p2;
}

void main() {
    vec2 xy = vUvs;

    xy = swipe(xy, vec2(-0.5, -0.5), vec2(4.0, 4.0));
    xy = bend(xy, vec2(0.6, 0.6), PI * 1.0);
    xy = bend(xy, vec2(0.0, 0.0), PI * 0.2);

    float scale = 20.0;
    float bound = 0.9;

    float x100 = xy.x * scale;
    float y100 = xy.y * scale;
    float f = fract(x100);
    float f2 = fract(y100);
    if (f > bound || f2 > bound) {
        gl_FragColor = vec4(0.8, 0.8, 0.8, 1.0);
    } else {
        gl_FragColor = vec4(0.2, 0.2, 0.2, 1.0);
    }
}
