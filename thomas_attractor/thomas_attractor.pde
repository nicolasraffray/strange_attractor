import peasy.*;

PeasyCam cam;

float x = 1.1;
float y = 1.0;
float z = 0.1;

float c = 1.141;
float d = -1.0;
float e = 0.01;

float l = 4.6669;
float m = 1.61;
float n = -0.01;

float b =  0.208186; 


ArrayList<PVector> points = new ArrayList<PVector>();
ArrayList<PVector> points2 = new ArrayList<PVector>();
ArrayList<PVector> points3 = new ArrayList<PVector>();



void setup(){
  size(600,600,P3D);
  colorMode(HSB);
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
 
 float dl = (sin(m) - b*l)*dt;
 float dm = (sin(n) - b*m)*dt;
 float dn = (sin(l) - b*n)*dt;
 
 l = l + dl;
 m = m + dm;
 n = n + dn;
 
 //scale(5);
 //point(x,y,z);
 //point(l,m,n);
 //point(c,d,e);
 

 points.add(new PVector(x,y,z));
 points2.add(new PVector(c,d,e));
 points3.add(new PVector(l,m,n));

 
 translate(0, 0, 0);
 scale(8);
 //stroke(255);
 //point(x,y,z);
 //println(c,d,e);
 
 //float bright = 0;
 for(PVector v: points2){
   point(v.x,v.y,v.z);
 }
 

 for(PVector v: points3){
   point(v.x,v.y,v.z);
 }
 
 for(PVector v: points){
  point(v.x,v.y,v.z); 
 };
}
