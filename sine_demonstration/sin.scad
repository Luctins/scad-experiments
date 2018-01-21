obj_num = 30;
angle = 360*$t;
h=1000;
rad = obj_num +1;
$fn = 20;

function pol_rec(r,angle) = [r*cos(angle) , 0 , r*sin(angle)] ;

function itera_pol(r, angle, n) = n == 1 ? pol_rec(r,angle) :
    pol_rec(r/n, angle*n) + pol_rec(r/(n-1), angle*(n-1));

function iter_pol(r, angle, n) = n== 1 ? [r*cos(angle) , 0 , r*sin(angle)] : 
    [(r/n)*cos(angle*n) , 0 , (r/n)*sin(angle*n)] + iter_pol(r,angle,n-1) ;

//0

rotate([0,-angle+90,0]) cylinder(h = h, r = rad) ;

for(i = [1:obj_num-1]) {
    translate(iter_pol(h,angle,i)) {
        rotate([0,-angle*(i+1)+90,0]) {
            cylinder(h = h/(i+1), r = rad-i) ;
        }
    }
}