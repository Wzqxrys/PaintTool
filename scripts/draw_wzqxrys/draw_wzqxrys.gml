/// @func draw_wzqxrys(x,y);
/// @desc WZQXRYS in Color at that location
/// @arg _x
/// @arg _y
function draw_wzqxrys(argument0, argument1) {
	var _x = argument0, _y = argument1;
	   //Pick Text alignment
	   if _x < w_width/3 {
	      draw_set_halign(fa_left);
	   } else if _x >= 2*w_width/3 {
	      draw_set_halign(fa_right);
	   } else {
	      draw_set_halign(fa_center);
	   }
	   if _y < w_height/3 {
	      draw_set_valign(fa_top);
	   } else if _y >= 2*w_height/3 {
	      draw_set_valign(fa_bottom);
	   } else {
	      draw_set_valign(fa_middle);
	   }
   
	   //Draw Text
	   draw_text_color(_x,_y,"WZQXRYS", vColor[|eColor.White],  vColor[|eColor.White],  vColor[|eColor.White],  vColor[|eColor.White],  1);
	   draw_text_color(_x,_y,"ZQXRYS",  vColor[|eColor.Blue],   vColor[|eColor.Blue],   vColor[|eColor.Blue],   vColor[|eColor.Blue],   1);
	   draw_text_color(_x,_y,"QXRYS",   vColor[|eColor.Pink],   vColor[|eColor.Pink],   vColor[|eColor.Pink],   vColor[|eColor.Pink],   1);
	   draw_text_color(_x,_y,"XRYS" ,   vColor[|eColor.Red],    vColor[|eColor.Red],    vColor[|eColor.Red],    vColor[|eColor.Red],    1);
	   draw_text_color(_x,_y,"RYS",     vColor[|eColor.Yellow], vColor[|eColor.Yellow], vColor[|eColor.Yellow], vColor[|eColor.Yellow], 1);
	   draw_text_color(_x,_y,"YS",      vColor[|eColor.Green],  vColor[|eColor.Green],  vColor[|eColor.Green],  vColor[|eColor.Green],  1);
	   draw_text_color(_x,_y,"S",       vColor[|eColor.Cyan],   vColor[|eColor.Cyan],   vColor[|eColor.Cyan],   vColor[|eColor.Cyan],   1);
   
   
	   //Reset Text Alignment
	   draw_set_halign(fa_left);
	   draw_set_valign(fa_top);


}
