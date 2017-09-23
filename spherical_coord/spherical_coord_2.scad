//Spehrical to rectangular coordinate converter (r,theta,zenit)
function spher_rect(r,theta,zenit) = 
[ r*(sin(theta)*cos(zenit)) , r*(sin(theta)*sin(zenit)), r*cos(theta) ];

rad = 50;
the= 180*$t;
rot= 360*((-cos(180*$t))-1);

steps=floor(100*$t);


for(i=[0:steps]) {
 translate(spher_rect(rad,the*(i/steps),360*((-cos(180*$t))-1)*(i/steps))) 
    sphere(r=2,$fs=1);
}
