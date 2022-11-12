
int N = 5000;

void setup() {
  size(280, 280);
  //frameRate(1);
  PGraphics pg = createGraphics(width, height);
  for(int c = 0; c < N; c++) {
    pg.beginDraw();
    pg.rectMode(CENTER);
    pg.background(127);
    pg.noStroke();
    for(int i = 0; i < 5; i++) {
      pg.fill(random(255));
      pg.circle(random(width), random(height), random(width/2));
      pg.fill(random(255));
      pg.rect(random(width), random(height), random(width/2), random(width/2));
    }
    pg.save("data/clean/clean" + c + ".png");
    for(int i = 0; i < width; i++) {
      for(int j = 0; j < height; j++) {
        if(random(1) < .05)
          pg.set(i, j, color(random(255))); 
      }
    }
    pg.save("data/noisy/noisy" + c + ".png");
  }
  noLoop();
}

boolean a = true;
void draw() {
  if(a) return;
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
