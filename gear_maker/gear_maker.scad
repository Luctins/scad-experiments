/*
Author: Lucas Martins Mendes - 2017
desc: 
"real" gear generator (with tanh aproximation),
   original idea and function from:
   http://mathworld.wolfram.com/GearCurve.html 
*/

/* Constants */
e = 2.71828182845904523;

/* Functions */
//Hyperbolic tangent
function tanh(t) = (pow(e,t) - pow(e,-t)) / ( pow(e,t) + pow(e,- t) ) ;
//polar to rectangular coordinates conversion
function pol_rect(r,ang)  = [r*cos(ang),r*sin(ang)];

/* Gear Parameters */
a = 10; //gear base radius
b = 1;  //teet "depht"
c = 10; //teeth "sharpness"
n = 10; //number of teeth
step = 360/200;  //resolution used to generate gear

/*
"diferent" gear parameters,
uncomment and set to animate to see effects and play around
*/

//b = 1.6-1.5*sin(180*$t); // bouncy version  (set to animate)
//n = 15 * sin(180*$t); //teeth number changes with time
//step = 360/(200*$t); //gear "pops" with animation




gear_pts = [ for (ang = [0:step:360]) let
        (pt = pol_rect(a + (b)*tanh(c*sin(n*ang)),ang) ) 
        pt];


//translate([a*2,0,0]) rotate([0,180,360/n+360*$t]) polygon(gear_pts);

rotate([0,0,-360*$t]) polygon(gear_pts);


