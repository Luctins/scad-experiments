$fa = 1;
linear_extrude(height = 50 *sin( 180*$t), center = false, convexity = 10, twist = 180*sin(360*$t), slices = 100, scale = sin( 180*$t))
square(10, true);