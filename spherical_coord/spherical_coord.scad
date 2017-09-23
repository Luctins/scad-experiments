//Spehrical to rectangular coordinate converter (r,theta,zenit)
function spher_rect(r,theta,zenit) = 
[ r*(sin(theta)*cos(zenit)) , r*(sin(theta)*sin(zenit)), r*cos(theta) ];

rad = 50;
the= 180*$t;
rot= 360*3*cos(180*$t);

steps=floor(200*$t);

for(i=[0:steps]) {
 translate(spher_rect(rad,the*(i/steps),rot*(i/steps))) sphere(r=5);
}
