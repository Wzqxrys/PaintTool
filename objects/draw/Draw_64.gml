/// @description Render to screen

   //Draw the painting if it exists
   if surface_exists(surf_painting) {
      draw_surface(surf_painting, 0, 0);
   }
   
   //Draw DEBUG Text *Extra
   if show_help {
	   draw_text_ext_colour(4,4,
			"Hold LEFT MOUSE to Paint\n" +
			"Press RIGHT MOUSE to Clear Canvas\n" + 
			"Scroll MOUSE WHEEL to Change Color\n" +
			"UP ARROW to make Brush Bigger\n" +
			"DOWN ARROW to make Brush Smaller\n" +
			"Press ENTER to Save\n" +
			"Press 'H' to Hide This",
			24,w_width-8,c_white,c_white,c_white,c_white,1
		);
   }
	draw_wzqxrys(w_width-4,w_height-4);
   
   //Draw the mouse with color as outline
   draw_circle_color(mouse_x, mouse_y, paint_width, vColor[|paint_color], vColor[|paint_color], true);
   
