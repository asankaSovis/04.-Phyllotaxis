float ANGLE = 137.5;
int N = 0;
int C = 6;

void setup() {
  size(800, 600);
  noStroke();
  colorMode(HSB);
  background(0, 0);
}

void draw() {
  float phi = N * radians(ANGLE);
  float radius = C * sqrt(N); 
  
  fill(0, 255 / radius);
  rect(0, 0, width, height);
  
  translate(width/2, height/2);
  
  fill((radius % 255), 255, 255);
  for (int i = 0; i < radius; i += 100) {
    circle((radius - i) * cos(phi), (radius - i) * sin(phi), 8);
  }
  
  N++;
}
