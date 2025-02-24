ArrayList<Integer> keys = new ArrayList<Integer>();

color blue = #416EDE;
color red = #ED1111;
color activeColor = #FFFFFF;
int lineX;
int lineY;
void setup() {
  size(1000, 700);
  fill(255, 255, 255);
  rect(0, 0, 150, 700);
  fill(blue);
  circle(75, 100, 100);
  fill(red);
  circle(75, 250, 100);
}

void draw() {
  if (mouseX>150 && mousePressed) {
    noStroke();
    fill(activeColor);
    circle(mouseX, mouseY, 50);
  }
  if (mousePressed && mouseButton==RIGHT) {
    stroke(activeColor);
    line(lineX, lineY, mouseX, mouseY);
  }

}

void mouseReleased() {
  if (dist(75, 100, mouseX, mouseY) < 50) {
    activeColor=blue;
  }
  if (dist(75, 250, mouseX, mouseY) < 50) {
    activeColor=red;
  }
  
 
}

void mousePressed() {
   if (mouseButton== RIGHT) {
     lineX=mouseX;
     lineY=mouseY;
   }
   
 }
 

 
 
 
 
 
