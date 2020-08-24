///boost
if(len==0){
    dir = face * 90
}
len= spd*4
//Get hvspd
hspd = lengthdir_x(len , dir)
vspd = lengthdir_y(len , dir)


//Move
phy_position_x = phy_position_x + hspd
phy_position_y = phy_position_y + vspd

//Create dash effect
var dash = instance_create(x, y, obj_dash_effect)

    (dash).sprite_index = sprite_index
    with(dash){
   image_index = image_index
   }




