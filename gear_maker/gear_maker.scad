//"real" gear generator (with tanh aproximation)
/* Functions */
function tanh(t) = (pow(e,t) - pow(e,-t)) / ( pow(e,t) + pow(e,- t) ) ;
function pol_rect(r,ang)  = [r*cos(ang),r*sin(ang)];

/* Constants */
pi = 3.1415926535897932;
e = 2.71828182845904523;

/* Gear Parameters */
a = 10; //gear base radius
b = 1.6; //teet depht
c = 10; //teeth "sharpness"
n = 10; //number of teeth
step = 360/200;




gear_pts = [ for (ang = [0:step:360]) 
        let (pt = pol_rect(a + (1/b)*tanh(c*sin(n*ang)),ang) ) pt];


translate([20,0,0]) rotate([0,0,360/n+180*$t]) polygon(gear_pts);

rotate([0,0,-180*$t]) polygon(gear_pts);


