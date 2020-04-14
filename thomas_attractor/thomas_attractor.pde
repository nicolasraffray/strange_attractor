
float x = 0.01;
float y = 0.0;
float z = 0.0;

float b = 0.32899;

void draw(){
 background(0);
 float dt = 0.01;
 float dx = sin(y) - b*x;
 float dy = sin(z) - b*y;
 float dz = sin(x) - b*z;
 
 x = x + dx;
 y = y + dy;
 z = z + dz;
 println(x,y,z);
}
