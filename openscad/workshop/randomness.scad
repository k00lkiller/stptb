seed = 666;
amount_spheres = 50;
random_size = rands(10,200,amount_spheres,seed);
random_pos = rands(0,900,(amount_spheres+1)*3, seed);


//echo(random_size);
for (i = [0:amount_spheres]){
      translate([random_pos[(i*3)+0],random_pos[(i*3)+1],random_pos[(i*3)+2]])
            sphere(random_size[i]);
      
}