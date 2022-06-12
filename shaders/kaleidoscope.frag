
precision mediump float;

uniform sampler2D colorTexture;
uniform vec2 shift;
uniform float scale;

varying vec2 vUvs;

float rand(vec2 co) {
    return fract(sin(dot(co * 1000.0, vec2(12.9898, 78.233))) * 43758.5453) / 10.;
}

void main() {
    vec4 bgColor = vec4(0.1, 0.2, 0.4, 1.0);
    vec4 moonColor = vec4(1.0, 1.0, 0.5, 1.0);
    vec4 spotColor = vec4(0.9, 0.9, 0.5, 1.0);

    gl_FragColor = texture2D(colorTexture, fract((vUvs + shift) * scale));
}
