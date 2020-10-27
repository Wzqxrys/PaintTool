/// @description Painting Logic

   //Left Click = Paint
   if mouse_check_button(mb_left) {
      paint_active = true;
	  
   } else if paint_active {
      paint_active = false;
   }
   
   //Right Click = Clear Canvis
   if mouse_check_button_pressed(mb_right) {
      paint_clear = true;
   }

   //Change color
   if mouse_wheel_up() {
      // Over color limit, go to the first entry
      paint_color = (paint_color + 1) mod eColor.Size; 
   } else if mouse_wheel_down() {
      paint_color -= 1;
      // Below color range, make it the last color
      if paint_color < 0 {
         paint_color += eColor.Size;
      }
   }
   
   //Change Paint Width
   if keyboard_check(vk_up) {
      //Make it bigger
      paint_width += 0.2;
      //Don't go over max
      if paint_width > paint_width_max {
         paint_width = paint_width_max;
      }
   } else if keyboard_check(vk_down) {
      //Make it smaller
      paint_width -= 0.2;
      //Don't go under min
      if paint_width < paint_width_min {
         paint_width = paint_width_min;
      }
   }

   //Update draw
   if paint_active 
   or paint_clear {
      surf_painting_update = true;
   }
   
   //Save Painting 
   if keyboard_check_pressed(vk_enter) {
      //If surface exists save to local data
      if surface_exists(surf_painting) {
         surface_save(surf_painting,"painting_"+string(get_timer()*fps_real)+".png");
      }
   }
   
   //*Extra
   // Set start of line to first point 
   if mouse_check_button_pressed(mb_left) { 
		m_previous_x = mouse_x;
		m_previous_y = mouse_y;
   }
   
   //Toggle Help Text
   if keyboard_check_pressed(ord("H")) {
   	show_help = !show_help;
   }
   
   //Change Tool
   if keyboard_check_pressed(vk_right) {
	   paint_tool = (paint_tool + 1) mod ePaint.size;
   } else if keyboard_check_pressed(vk_left) {
	   paint_tool -= 1
	   if paint_tool < 0 {
			paint_tool += ePaint.size;
	   }
   }
   