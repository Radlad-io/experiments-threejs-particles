
// Receives position passed from vertexShader
// THREE > vertexShader > fragmentShader
varying vec3 vPosition;

// Imports uniforms from Model.js
uniform vec3 uColor1;
uniform vec3 uColor2;

void main() {
  vec3 color = vec3(1.0, 1.0, 1.0);
  color = vPosition;

  vec3 color1 = vec3(1.0, 0.0, 0.0);
  vec3 color2 = vec3(1.0, 1.0, 0.0);

  float depth = vPosition.x * 0.5 + 0.5;
  color = mix(uColor1, uColor2, depth);
  gl_FragColor = vec4(color, depth);
}