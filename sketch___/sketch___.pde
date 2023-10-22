float nx = 0;
float ny = 0;
float nz = 0;

void setup () {
  size(1200,1200);
  }


void draw () {
  background (255);
  drawStream ();
}

void drawStream () {
  nx = 0;
  for (int i=0; i<width; i += 10) {
    ny = 0;
    for (int j=0; j<width; j += 10) {
      float angle = map (noise (nx, ny, nz), 0, 2.0, 0, 4*PI);
      float x = 50 * cos (angle);


      float y = 50 * sin (angle);
      line (i, j, i+x, j+y);
      ny += 0.005;
    }
    nx += 0.005;
  }
  nz +=0.001;
}
