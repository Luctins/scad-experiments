//block Rotate

obj_num = 120;

step = 360/obj_num;

radius = 50;

speed = 180;

for (a=[0:1:obj_num]) {
    
        translate([radius*cos(a*step+speed*$t),radius*sin(a*step+speed*$t),0])
         rotate([0,a*step-$t*speed,a*step+$t*speed]) 
        cube([10,10,10], center = true);
    
}

        rotate([$t*180+15,0,0]) 
        cube([10,10,10], center = true);