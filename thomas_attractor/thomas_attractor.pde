import peasy.*;

PeasyCam cam;

float x = 1.1;
float y = 1.0;
float z = 0.1;

float c = 1.141;
float d = -1.0;
float e = 0.01;

float b = 0.198;

ArrayList<PVector> points = new ArrayList<PVector>();
ArrayList<PVector> points2 = new ArrayList<PVector>();


void setup(){
  size(600,600,P3D);
  cam = new PeasyCam(this,600);
  
}

void draw(){
 background(255);
 float dt = 0.1;
 float dx = (sin(y) - b*x)*dt;
 float dy = (sin(z) - b*y)*dt;
 float dz = (sin(x) - b*z)*dt;
 
 x = x + dx;
 y = y + dy;
 z = z + dz;
 
 float dc = (sin(d) - b*c)*dt;
 float dd = (sin(e) - b*d)*dt;
 float de = (sin(c) - b*e)*dt;
 
 c = c + dc;
 d = d + dd;
 e = e + de;

 points.add(new PVector(x,y,z));
 points2.add(new PVector(c,d,e));
 
 translate(0, 0, 0);
 scale(8);
 //stroke(255);
 noSmooth();
 //point(x,y,z);
 println(c,d,e);
 
 for(PVector v: points2){
   point(v.x,v.y,v.z);
 }
 
 for(PVector v: points){
  point(v.x,v.y,v.z); 
 };
}
