void setup() {
  size(500, 500);
  noStroke(); 
}

void draw() {
  background(255); 
  myFractal(width / 2, height / 2, 150, 6); 
}

void myFractal(int x, int y, float size, int numCircles) {
  fill(255, 182, 193, 100); 

  for (int i = 0; i < numCircles; i++) {
    float angle = TWO_PI / numCircles * i; 
    float xOffset = cos(angle) * size; 
    float yOffset = sin(angle) * size; 
    
    ellipse(x + xOffset, y + yOffset, size, size); 
  }

  if (size > 10) {
    float newSize = size * 0.75; 
    myFractal(x, y, newSize, numCircles); 
  }
}
