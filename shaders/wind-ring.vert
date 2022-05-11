
precision mediump float;

attribute vec2 aVertexPosition;
attribute vec2 aUvs;

uniform mat3 translationMatrix;
uniform mat3 projectionMatrix;
uniform float uTime;

varying vec2 vUvs;
varying float u_time;

void main() {
    vUvs = aUvs;
    u_time = uTime;
    gl_Position = vec4((projectionMatrix * translationMatrix * vec3(aVertexPosition, 1.0)).xy, 0.0, 1.0);
    // gl_Position = vec4(1,1,1,0);
}
