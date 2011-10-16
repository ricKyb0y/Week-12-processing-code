int xpos;
int ypos;
int xspeed;
int sensorValue = 50;

void setup() {
size (700, 200, P3D );
noStroke();
fill(0.4);

xpos = width/2;
ypos = height/2;
xspeed = 2;
colorMode (RGB,  1);


}

void draw () {
  background (250);
  display();
  drive();
  
 
  directionalLight(0.5, 0.5, 0.5, 1, 1, -2);
  float s = mouseX /  float(width);
  specular(s, s, s);
}
void display () {
  ellipseMode(CENTER);
  
  ellipse(xpos, ypos,sensorValue,  sensorValue);
 
}

void drive () {
  xpos = xpos +xspeed;
  if (xpos > width) {
    xpos = 0;
    sensorValue = 50;
  }
}



