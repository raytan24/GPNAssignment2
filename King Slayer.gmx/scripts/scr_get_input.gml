right_key = keyboard_check(vk_right)
left_key = keyboard_check(vk_left)
up_key = keyboard_check(vk_up)
down_key = keyboard_check(vk_down)
dash_key = keyboard_check(vk_shift)
attack_key = mouse_check_button_pressed(mb_left)
//Get axis
xaxis = (right_key - left_key)
yaxis = (down_key - up_key)
