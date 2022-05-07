
precision mediump float;

varying vec2 vUvs;

float rand(vec2 co){
    return fract(sin(dot(co, vec2(12.9898, 78.233))) * 43758.5453);
}

float rand_balanced(vec2 co){
    return (fract(sin(dot(co, vec2(12.9898, 78.233))) * 43758.5453) - 0.5) * 2.0;
}

const int limit = 60;
const float PI = 3.1415926;

float square(float x) {
    return x * x;
}

float normal_distribution(float x, float mean, float std) {
    return exp(-0.5 * square((x - mean) / std)) / sqrt(2. * PI * std);
}

void main() {
    vec2 uv = vUvs;
    vec2 points[limit];

    vec3 color = vec3(0.0);

    for (int i = 0; i < limit; i++) {
        vec2 point = vec2(rand_balanced(vec2(i+10, 0)), rand_balanced(vec2(i, 1+90))) * vec2(0.8, 0.8);
        points[i] = point;

        float point_angle = atan(point.y, point.x);
        float point_len = length(point);

        float uv_angle = atan(uv.y, uv.x);
        float uv_len = length(uv);

        float angle_delta = abs(point_angle - uv_angle);
        float len_delta = point_len - uv_len;

        if (abs(len_delta) < 0.012 * rand(point) && angle_delta < 0.22 / point_len) {
            float color_v = rand(point) / 2.;
            float strength = smoothstep(1. , 0., abs(len_delta * 100.));
            // color = mix(color, vec3((1.0 - color_v)*strength, color_v * strength, (1.0-color_v)*strength), 0.99);
            float fading = 0.001 / abs(len_delta);
            color += vec3(1.0 - color_v, 0.5 + color_v, 0.5 + (1.0-color_v)) * vec3(fading, fading, fading);
        }
    }
    gl_FragColor = vec4(color, 1.0);
}
