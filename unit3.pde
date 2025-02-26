ArrayList<Integer> keys = new ArrayList<Integer>();

color blue = #416EDE;
color red = #ED1111;
color activeColor = #FFFFFF;
color white = #FFFFFF;
int lineX;
int lineY;
int lineX1;
int lineY1;
int clickCount;
void setup() {
  fill(#C4C4C4);
  rect(0, 0, 1000, 700);
  size(1000, 700);
  fill(255, 255, 255);
  rect(0, 0, 150, 700);
  fill(blue);
  circle(75, 100, 100);
  fill(red);
  circle(75, 250, 100);
}

void draw() {
  
  strokeWeight(10);
  fill(blue);
  if (dist(75, 100, mouseX, mouseY)<=50) {
    stroke(255);
  } else {
    stroke(0);
  }
  circle(75, 100, 100);
  if (dist(75, 250, mouseX, mouseY)<=50) {
    stroke(255);
  } else {
    stroke(0);
  }
  fill(red);
  circle(75, 250, 100);
  noStroke();
  
  if (mouseX>150 && mousePressed) {
    noStroke();
    fill(activeColor);
    circle(mouseX, mouseY, 50);
  }
  if (mousePressed && mouseX>50 && mouseX<105 && mouseY>630 && mouseY<660) {
    fill(#C4C4C4);
    rect(150, 0, 850, 700);
  }
  fill(0);
  textSize(20);
  rect(50, 630, 55, 30);
  fill(255);
  text("Delete", 50, 650);

}

void mouseReleased() {
  if (dist(75, 100, mouseX, mouseY) < 50) {
    activeColor=blue;
  }
  

  if (dist(75, 250, mouseX, mouseY) < 50) {
    activeColor=red;
  }
  
 
}



 
 
 
 
 
