/// @description Render to screen

	//Draw light grey square grid
	for(i=0;i<32;i++) {
		for(j=0;j<18;j++) {
			//Draw LightGrey then DarkGrey Squares
			if i mod 2 == 1 {
				if j mod 2 == 1 {
					draw_rectangle_color(
						w_width/32*i, w_height/18*j,
						w_width/32*i+ w_width/32, w_height/18*j + w_height/18,
						c_gray,c_gray,c_gray,c_gray,false
					);
				} else {
					draw_rectangle_color(
						w_width/32*i, w_height/18*j,
						w_width/32*i+ w_width/32, w_height/18*j + w_height/18,
						c_dkgray,c_dkgray,c_dkgray,c_dkgray,false
					);
				}
			} else {
				if j mod 2 == 0 {
					draw_rectangle_color(
						w_width/32*i, w_height/18*j,
						w_width/32*i+ w_width/32, w_height/18*j + w_height/18,
						c_gray,c_gray,c_gray,c_gray,false
					);
				} else {
					draw_rectangle_color(
						w_width/32*i, w_height/18*j,
						w_width/32*i+ w_width/32, w_height/18*j + w_height/18,
						c_dkgray,c_dkgray,c_dkgray,c_dkgray,false
					);
				}
			}
		}
	}

   //Draw the painting if it exists
   if surface_exists(surf_painting) {
      draw_surface(surf_painting, 0, 0);
   }
   
   //Draw DEBUG Text *Extra
   if show_help {
	   draw_text_ext_colour(4-1, 4-1, help_string, 24, w_width-8, c_white,c_white,c_white,c_white, 1);
	   draw_text_ext_colour(4-1, 4+1, help_string, 24, w_width-8, c_white,c_white,c_white,c_white, 1);
	   draw_text_ext_colour(4+1, 4-1, help_string, 24, w_width-8, c_white,c_white,c_white,c_white, 1);
	   draw_text_ext_colour(4+1, 4+1, help_string, 24, w_width-8, c_white,c_white,c_white,c_white, 1);
	   draw_text_ext_colour(4, 4, help_string, 24, w_width-8, c_black,c_black,c_black,c_black, 1);
   }
	
	//Draw Mode Info
	draw_set_halign(fa_right);
	if paint_tool == ePaint.Brush {
		//Draw green "BRUSH" top right of screen
		draw_text_color(w_width - 8, 8, "BRUSH", c_green, c_green, c_green, c_green, 1);
	} else if paint_tool == ePaint.Eraser {
		//Draw red "ERASER" top right of screen
		draw_text_color(w_width - 8, 8, "ERASER", c_red, c_red, c_red, c_red, 1);
	}
	draw_set_halign(fa_right);
	
	//Draw WZQXRYS
	draw_wzqxrys(w_width-4,w_height-4);
   
   //Draw the mouse with color as outline
   draw_circle_color(mouse_x, mouse_y, paint_width, vColor[|paint_color], vColor[|paint_color], true);
   
