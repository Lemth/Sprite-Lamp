if (keyboard_check(vk_up))
{
    self.y -= 2;
}
if (keyboard_check(vk_down))
{
    self.y += 2;
}
if (keyboard_check(vk_left))
{
    self.x -= 2;
}
if (keyboard_check(vk_right))
{
    self.x += 2;
}

image_angle = image_angle + 2;

