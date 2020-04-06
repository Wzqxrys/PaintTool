/// @description Draw on surface

   //Do i draw surface?
   if surf_painting_update {
      //Check surface exists
      if !surface_exists(surf_painting) {
         surf_painting = surface_create(w_width, w_height);
      }
	  
      //Set surface as drawing target
      surface_set_target(surf_painting);
      
      //Draw something, maybe paint?
      if paint_active {
		 //Draw line to fill the gap between points. *Extra
		 draw_line_width_colour(m_previous_x, m_previous_y, mouse_x, mouse_y, paint_width*2, vColor[|paint_color], vColor[|paint_color]);
		 
         //Draw color circle at mouse location
         draw_circle_color(mouse_x, mouse_y, paint_width, vColor[|paint_color], vColor[|paint_color], false);
		 m_previous_x = mouse_x;
		 m_previous_y = mouse_y;
      }
      
      //Clear Painting
      if paint_clear {
         draw_clear_alpha(c_black, 0);
         paint_clear = false;
      }
      
      //Reset draw target to normal
      surface_reset_target();
      //Stop Drawing every frame
      surf_painting_update = false;
   }