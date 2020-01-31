//player 1
input_handle_gamepad_axis(   0, E_INPUT_SLOT.UP   ,   gamepad_device, gp_axislv, -0.3 );
input_handle_gamepad_button( 0, E_INPUT_SLOT.UP   ,   gamepad_device, gp_padu         );


input_handle_gamepad_axis(   0, E_INPUT_SLOT.DOWN ,   gamepad_device, gp_axislv,  0.3 );
input_handle_gamepad_button( 0, E_INPUT_SLOT.DOWN ,   gamepad_device, gp_padd         );


input_handle_gamepad_axis(   0, E_INPUT_SLOT.LEFT ,   gamepad_device, gp_axislh, -0.3 );
input_handle_gamepad_button( 0, E_INPUT_SLOT.LEFT ,   gamepad_device, gp_padl         );


input_handle_gamepad_axis(   0, E_INPUT_SLOT.RIGHT,   gamepad_device, gp_axislh,  0.3 );
input_handle_gamepad_button( 0, E_INPUT_SLOT.RIGHT,   gamepad_device, gp_padr         );


input_handle_gamepad_button( 0, E_INPUT_SLOT.JUMP ,   gamepad_device, gp_face1, gp_face2, gp_face3, gp_face4 );


//player 2
input_handle_keyboard(       1, E_INPUT_SLOT.UP   ,   vk_up   , ord("W")              );
input_handle_keyboard(       1, E_INPUT_SLOT.DOWN ,   vk_down , ord("S")              );
input_handle_keyboard(       1, E_INPUT_SLOT.LEFT ,   vk_left , ord("A")              );
input_handle_keyboard(       1, E_INPUT_SLOT.RIGHT,   vk_right, ord("D")              );
input_handle_keyboard(       1, E_INPUT_SLOT.JUMP ,   vk_space, vk_enter              );
input_handle_mouse(          1, E_INPUT_SLOT.JUMP ,   mb_left                         );