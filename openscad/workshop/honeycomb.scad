ut_offset = 0.01; //avoiding z-fighting
cell_size = 40; //diameter
cell_height = 5; //height
cell_wall_thickness = 1; //wall thickness

color("White") combgrid(10,7);


module hexcell() {
       difference() {
              cylinder(r=cell_size/2,h=cell_height,$fn=6);
              translate([0,0,-ut_offset]) 
                    cylinder(r=cell_size/2-cell_wall_thickness,h=cell_height+(2*ut_offset),$fn=6);
       }
}

module combgrid(w,h) {
      comb_tri_height = (cell_size/2)*sqrt(3);
      for (ih = [0:h]){
            translate([ih*((cell_size*1.5)),ih%2*comb_tri_height,0]){
            for (iw = [0:w]) {
                  translate([0,iw*(2*comb_tri_height),0]) hexcell();
                  }          
            }
      }
}


