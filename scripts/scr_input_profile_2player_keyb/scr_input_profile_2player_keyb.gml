//player 1

input_handle_keyboard(       0, E_INPUT_SLOT.UP   ,   ord("W")              );
input_handle_keyboard(       0, E_INPUT_SLOT.DOWN ,   ord("S")              );
input_handle_keyboard(       0, E_INPUT_SLOT.LEFT ,   ord("A")              );
input_handle_keyboard(       0, E_INPUT_SLOT.RIGHT,   ord("D")              );

input_handle_keyboard(       0, E_INPUT_SLOT.JUMP ,   vk_space,             );

//player 2
input_handle_keyboard(       1, E_INPUT_SLOT.UP   ,   vk_up                 );
input_handle_keyboard(       1, E_INPUT_SLOT.DOWN ,   vk_down               );
input_handle_keyboard(       1, E_INPUT_SLOT.LEFT ,   vk_left               );
input_handle_keyboard(       1, E_INPUT_SLOT.RIGHT,   vk_right              );

input_handle_keyboard(       1, E_INPUT_SLOT.JUMP ,   vk_numpad0            );
