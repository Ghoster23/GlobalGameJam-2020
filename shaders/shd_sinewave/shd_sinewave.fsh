//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float amp;
uniform float freq;
uniform float scaling;
uniform float timer;

void main()
{
    vec2 coord = v_vTexcoord;
    float dy = amp * sin(freq * coord.x + scaling * timer);
    coord.y = coord.y + dy;
	
	//if ((col.r == 1.0) && (col.g == 0.0) && (col.b == 1.0))
	
   gl_FragColor = v_vColour * texture2D( gm_BaseTexture, coord );
	
}