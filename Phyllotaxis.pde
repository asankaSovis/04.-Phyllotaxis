/* PHYLLOTAXIS ----------------------------------------------------------

In this example, we wil create a Phyllotaxis. Phyllotaxis is a common spiral pattern found in
nature. Everything from sunflowers to cacti are identified to replicate this pattern. Eventhough
this pattern is quite intricate, it is very simple to implement.
Check out my blog post: https://asanka-sovis.blogspot.com/2021/11/02-gravity-simulation-making-bouncing.html
Coded by Asanka Akash Sovis

-----------------------------------------------------------------------------*/

// Defining global variables
float ANGLE = 137.5; // Magic angle defined in the paper
int N = 0; // Incrementer
int C = 6; // Constant to position the points

void setup() {
  size(800, 600); // Defining the size of the canvas
  noStroke(); // Remove stroke
  colorMode(HSB); // Setting up the colour mode to HSB so that
                  // different hues can be created easily
  background(0, 0); // Setting the colour of the background
}

void draw() {
  // Phyllotaxis is based on two equations. Here we apply these two equations.
  // The output of these equations give the angle and radius of the points.
  // With every increment of N, we recalculate these angle and radius and
  // draw a new point.
  float phi = N * radians(ANGLE); // Angle
  float radius = C * sqrt(N); // Radius
  
  // To create the blurring effect, we fill the canvas with an alpha value
  fill(0, 255 / radius);
  rect(0, 0, width, height);
  
  // We translate the coordinate system of the canvas to the centre. This is
  // because we generate the points in a spiral.
  translate(width/2, height/2);
  
  fill((radius % 255), 255, 255); // Generate a fill colour with HSB according
  // to HSB
  
  // We added a for loop so that we can create multiple spirals
  for (int i = 0; i < radius; i += 100) {
    // Draw a circle with the points we generated before
    circle((radius - i) * cos(phi), (radius - i) * sin(phi), 8);
  }
  
  N++; // Increment the incrementer
}
