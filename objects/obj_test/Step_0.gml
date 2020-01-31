
//Detect up/down/left/right input
var _h = input_check_analogue( 0, E_INPUT_SLOT.RIGHT ) - input_check_analogue( 0, E_INPUT_SLOT.LEFT );
var _v = input_check_analogue( 0, E_INPUT_SLOT.DOWN  ) - input_check_analogue( 0, E_INPUT_SLOT.UP   );



//Detect double-tapped input and speed up if we see it e.g. dashing
//Double-taps often don't work properly for analogue input, so we turn off this feature for gamepad stick input
if ( !input_is_analogue( 0, E_INPUT_SLOT.UP, E_INPUT_SLOT.DOWN, E_INPUT_SLOT.LEFT, E_INPUT_SLOT.RIGHT ) )
{
    _h += input_check_double( 0, E_INPUT_SLOT.RIGHT ) - input_check_double( 0, E_INPUT_SLOT.LEFT );
    _v += input_check_double( 0, E_INPUT_SLOT.DOWN  ) - input_check_double( 0, E_INPUT_SLOT.UP   );
}


//Do the movement
var dir = point_direction( 0, 0, _h, _v);
var len = point_distance( 0, 0, _h, _v) * speed;

var hspd = lengthdir_x(len,dir);
var vspd = lengthdir_y(len,dir);

phy_position_x += hspd;
phy_position_y += vspd;
phy_position_y -= 25*input_check_pressed( 0, E_INPUT_SLOT.JUMP );
