obj_num = 50;
max_h = 50;
rad = 100;
$vpt = [ 0, 0 , 0];
$vpr = [ 45 , 0, -360*$t ];

for ( i = [0 : obj_num] ) {
   translate([rad*cos(i*360/obj_num),rad*sin(i*360/obj_num),0])
   linear_extrude(height = max_h+max_h*sin(2*((obj_num*$t-i)*360/obj_num)), center = false)
   circle(10);
   
   
} 