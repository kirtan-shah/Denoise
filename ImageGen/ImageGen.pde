
int N = 10000;

void setup() {
  size(50, 50);
  rectMode(CENTER);
  //frameRate(1);
}

void draw() {
  background(127);
  noStroke();
  for(int i = 0; i < 5; i++) {
    fill(random(255));
    circle(random(width), random(height), random(width/2));
    fill(random(255));
    rect(random(width), random(height), random(width/2), random(width/2));
  }
  save("data/clean" + frameCount + ".png");
  for(int i = 0; i < width; i++) {
    for(int j = 0; j < height; j++) {
      if(random(1) < .05)
        set(i, j, color(random(255))); 
    }
  }
  save("data/noisy" + frameCount + ".png");
  if(frameCount == N) noLoop();
}
