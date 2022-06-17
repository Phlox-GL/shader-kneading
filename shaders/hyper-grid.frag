
uniform float scale;
uniform vec2 shift;

precision mediump float;

varying vec2 vUvs;

void main() {

    vec2 xy = vUvs;
    const float PI = 3.1415926535897932384626433832795;

    float theta = atan(xy.y, xy.x);
    float r = length(xy);

    if (length(xy) >= 1.0) {
        // black
    } else {
        float pz = 2.0 * r / (1.0 - r*r);
        float pr = pz*r + 1.0;
        float px = pz*cos(theta);
        float py = pz*sin(theta);
        // float scale = 4.0;
        // if (fract(pr) <= 0.13 && fract(pr) >= 0.08) {

        float mx = px*scale - shift.x;
        float my = py*scale - shift.y;

        if (fract(mx) < 0.04 || fract(my) < 0.04) {
            gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
        } else {
            gl_FragColor = vec4(1.0, 1.0, 1.0, 0.0);
        }
    }

}
