float ANGLE = 137.5;
int N = 0;
int C = 6;

void setup() {
  size(800, 600);
  noStroke();
  background(0, 0);
}

void draw() {
  translate(width/2, height/2);
  
  float phi = N * radians(ANGLE);
  float radius = C * sqrt(N); 
  
  circle(radius * cos(phi), radius * sin(phi), 8);
  
  N++;
}
