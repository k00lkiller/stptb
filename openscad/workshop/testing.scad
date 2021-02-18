color("Black") intersection()
      {
      translate([5,5,0])
            cube([10,10,5]);
      translate([5,5,5])
            sphere(d=10, center=true);
      }
      
color("Red") difference()
      {
      translate([5,5,0])
            cube([10,10,5]);
      translate([5,5,5])
            sphere(d=10, center=true);
      }
      
      
color("Yellow") minkowski()
      {
      translate([0,20,0])
            cube([10,10,1]);
      sphere(r=0.5);
      }
      
color("Blue") union()
      {
      translate([0,50,0])
            sphere(r=5);
      translate([0,50,1])
            cylinder(10, 5, .1);
      }
      