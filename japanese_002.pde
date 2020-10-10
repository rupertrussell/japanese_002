// Japanese inspired design by Rupert Russell
// 10 October 2020 - Still waiting to hear from Parks
// Artwork on redbubble at:
// Processing 3.5.4 code on Github at: https://github.com/rupertrussell/japanese_001

int maxNumber = 9;
int scale = 200;
int gridSize = 340 * 2; // 320
float rotateDegrees = 40;
void setup() {
  background(0);
  stroke(255);
  strokeWeight(8);
  size(2875, 3900);
  noFill();
  smooth();
  noLoop();
}


void draw() {

  
  for (int x = gridSize /2; x < width - gridSize /2 ; x = x + gridSize) {
    for (int y = gridSize /2; y < height - gridSize /2 ; y = y + gridSize) {
      push();
        
      nowaki(x, y);
      pop();
    }
  }

  save(width + "x" + height + "_japanese_001.png");
  println("saved");
  exit();
}

void nowaki(int xOffset, int yOffset) {

  println("xOffset = " + xOffset);
  translate(xOffset, yOffset);

  for (int x = 0; x < maxNumber; x++) {
    arc(100, 0, scale, scale, radians(0), radians(180));
    rotate(radians(rotateDegrees));
  }
}
