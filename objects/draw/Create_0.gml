/// @description Set Up Main render object
// Made by Wzqxrys

   w_width = 960;
   w_height = 540;
   
   //Setup Surface for painting
   surf_painting = surface_create(w_width, w_height);
   //Do i draw check
   surf_painting_update = true;
   
   //Lets add some color variants
   // Color ID = 0, 1, 2
   // eColor.Size always becomes 'how many colors'    >*Extras------<
   enum eColor { Red, Yellow, Green, Cyan, Blue, Pink, White, Black, Size };
   
   // Color value list, holds the values of c_red, c_green and c_blue
   vColor = ds_list_create();
   vColor[|eColor.Red] = make_color_rgb(255, 0, 0);
   vColor[|eColor.Yellow] = make_color_rgb(255, 255, 0);
   vColor[|eColor.Green] = make_color_rgb(0, 255, 0);
   vColor[|eColor.Cyan] = make_color_rgb(0, 255, 255);
   vColor[|eColor.Blue] = make_color_rgb(0, 0, 255);
   vColor[|eColor.Pink] = make_color_rgb(255, 0, 255);
   //*Extra Colors
   vColor[|eColor.White] = make_color_rgb(255,255,255);
   vColor[|eColor.Black] = make_color_rgb(0,0,0);
   
   //Paint Memory
   paint_active = false;
   paint_width = 5;
   paint_width_min = 1;
   paint_width_max = 30;
   paint_color = eColor.Green;
   paint_clear = true;
   
   //*Extra
   //Mouse Previous Locations
   m_previous_x = 0;
   m_previous_y = 0;
   show_help = true;