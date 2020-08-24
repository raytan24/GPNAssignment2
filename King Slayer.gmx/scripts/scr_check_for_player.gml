///scr_check_for_player()
if(instance_exists(obj_player_movement)){
    var dis = point_distance(x,y,obj_player_movement.x,obj_player_movement.y)
    if(dis < sight){
        state = scr_enemy_chase_state
        targetx = obj_player_movement.x
        targety = obj_player_movement.y
    }else{
        scr_enemy_choose_next_state()
    }
} else {
    scr_enemy_choose_next_state()
}
