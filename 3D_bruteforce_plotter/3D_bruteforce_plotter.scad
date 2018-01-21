//3D Plotter

//Var's
x_min=-3;
x_max=3;
y_min=-3;
y_max=3;
z_min=-3;
z_max=3;

pt_num= 100;
aprox_val=0.1;
increm_x=(abs(x_max)+abs(x_min))/pt_num;
increm_y=(abs(y_max)+abs(y_min))/pt_num;
increm_z=(abs(z_max)+abs(z_min))/pt_num;
echo("increm_x:",increm_x);
echo("increm_y:",increm_y);
echo("increm_z:",increm_z);

for(x=[x_min:increm_x:x_max]) {
    for(y=[y_min:increm_y:y_max]) {
        for(z=[z_min:increm_z:z_max]) {
         comp = pow(x,4)+pow(y,4)+pow(z,4)-(3*pow(x,2)*pow(y,2)*pow(z,2));
         if(comp <= aprox_val && comp >= -aprox_val) {
            translate([x,y,z]) sphere(r=1,$fn=10);
             echo("comp:",comp);
            }
            echo("z:",z);
        }
        echo("y:",y);
    }   
    echo("x:",x);
}

/*
for(i=[0:pt_num]) {
    x=rands(x_min,x_max,1)[0];
    y=rands(y_min,y_max,1)[0];
    z=rands(z_min,z_max,1)[0];
    val= pow(x,4)+pow(y,4)+pow(z,4)-(3*pow(x,2)*pow(y,2)*pow(z,2));
    if(val<=aprox_val&&val>=-aprox_val) {
        echo("here!");
        translate([x,y,z]) sphere(r=0.5,$fn=30);
    }
}
*/
