//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;
uniform vec2 texel;

const float xSpeed = 0.005;
const float xFreq = 20.0;
const float xSize = 2.0;

void main()
{
	
	float xWave = sin(time * xSpeed + v_vTexcoord.y * xFreq) * (xSize*texel.x) * v_vTexcoord.y;
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord + vec2(xWave, 0.0));
	
}