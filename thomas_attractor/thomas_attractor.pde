import peasy.*;

//PeasyCam cam;

float x = 0.01;
float y = 0.0;
float z = 0.0;

float b = 0.1998;

void setup(){
  background(0);
  size(200,200,P3D);
  //cam = new PeasyCam(this,600);
  
}

void draw(){
 float dt = 0.01;
 float dx = (sin(y) - b*x)*dt;
 float dy = (sin(z) - b*y)*dt;
 float dz = (sin(x) - b*z)*dt;
 
 x = x + dx;
 y = y + dy;
 z = z + dz;
 println(x,y,z);
 
 translate(width/2, height/2);
 scale(1);
 stroke(255);
 point(x,y,z);
}
