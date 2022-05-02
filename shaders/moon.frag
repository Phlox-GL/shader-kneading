
precision mediump float;

varying vec2 vUvs;

float rand(vec2 co) {
    return fract(sin(dot(co * 1000.0, vec2(12.9898, 78.233))) * 43758.5453) / 10.;
}

void main() {
    vec4 bgColor = vec4(0.1, 0.2, 0.4, 1.0);
    vec4 moonColor = vec4(1.0, 1.0, 0.5, 1.0);
    vec4 spotColor = vec4(0.1, 0.2, 0.1, 1.0);
    float l = length(vUvs);
    if (l < 0.9) {
        if (l < 0.88) {
            gl_FragColor = mix(moonColor, spotColor, rand(vUvs));
        } else {
            float d = l - 0.88;
            gl_FragColor = mix(moonColor, bgColor, d * 50.0);
        }
    } else {
        gl_FragColor = bgColor;
    }
}
