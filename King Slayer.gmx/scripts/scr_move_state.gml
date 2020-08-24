///Move player
/*
scr_get_input()

///Up key
if (up_key){
    phy_position_y -= spd
    sprite_index = spr_player_up
    image_speed = 0.2
    }

//Down key
if(down_key){
    phy_position_y += spd
    sprite_index = spr_player_down
    image_speed = 0.2
    }
    
//Right key
if(right_key){
    phy_position_x += spd
    sprite_index = spr_player_right
    image_speed = 0.2
    }

//Left key
if(left_key){
    phy_position_x -= spd
    sprite_index = spr_player_left
    image_speed = 0.2
    }

//Stop animating / idle
if(!down_key and !right_key and !left_key and !up_key ){
    image_speed = 0
    image_index = 1
}

*/

//Get axis 
/*var xaxis = (right_key - left_key)
var yaxis = (down_key - up_key)*/

scr_get_input()

if (dash_key){
    var xdir = lengthdir_x(8, face*90)
    var ydir = lengthdir_y(8, face*90)
    var speaker = instance_place(x+xdir, y+ydir, obj_speaker)
    if(speaker != noone){   
    
     //Talk to it
      with(speaker){
        if(!instance_exists(dialog)){
            dialog = instance_create(x+xoffset, y+yoffset, obj_dialog)
            dialog.text = text 
        }else{
            dialog.text_page++
            dialog.text_count = 0
            if (dialog.text_page > array_length_1d(dialog.text)-1){
                with(dialog){
                    instance_destroy()
                
             
         }
        }
      }
     }
       
    
    
    }else if (obj_player_stats.stamina >= DASH_COST){
    state = scr_dash_state
    alarm[0] = room_speed/8
    obj_player_stats.stamina -= DASH_COST
    obj_player_stats.alarm[0] = room_speed
 }
}

if(attack_key){
    image_index = 0
    state = scr_attack_state
}

//Get direction
dir = point_direction(0,0,xaxis,yaxis)

//Get Length
if (xaxis==0 and yaxis==0) {
    len=0
    }
        else 
    {
        len=spd
        scr_get_face()
    }


//Get hvspd
hspd = lengthdir_x(len , dir)
vspd = lengthdir_y(len , dir)


//Move
phy_position_x = phy_position_x + hspd
phy_position_y = phy_position_y + vspd

//Control the sprite
image_speed = 0.2
if(len==0) image_index = 0

/*//Vertical
if(vspd>0){
    sprite_index = spr_player_down
    }
    else if(vspd<0){
    sprite_index = spr_player_up
    }
    
//Horizontal 
if(hspd>0){
    sprite_index = spr_player_right
    }
    else if(hspd<0){
    sprite_index = spr_player_left
    }  
//Stop animating / idle
if(!down_key and !right_key and !left_key and !up_key ){
    image_speed = 0
    image_index = 1
}*/

switch(face){
    case RIGHT:
        sprite_index = spr_player_right
        break
    case UP:
        sprite_index = spr_player_up
        break
    case LEFT:
        sprite_index = spr_player_left
        break
    case DOWN:
        sprite_index = spr_player_down
        break
}

