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
int slider;
int thickness;
int Circle;
int circleDrawToggle;
int circleX;
int circleY;
int R;
int G;

void setup() {
  circleDrawToggle=0;
  thickness=5;
  slider=350;
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
    
  println(circleDrawToggle);
  
  
  
  fill(255, 255, 255);
  rect(0, 0, 300, 50);
  rect(0, 0, 150, 700);
  textSize(10);
  fill(0);
  text("red", 160, 25);
  text(R, 175, 25);
  text("green", 205, 25);
  text(G, 230, 25);
  strokeWeight(3);
  fill(255);
  rect(190, 10, 10, 15);
  rect(190, 25, 10, 15);
  rect(245, 25, 10, 15);
  rect(245, 10, 10, 15);
  noStroke();
  fill(0);
  triangle(190, 25, 195, 12, 200, 25);
  triangle(190, 25, 195, 37, 200, 25);
  triangle(245, 25, 250, 12, 255, 25);
  triangle(245, 25, 250, 37, 255, 25);
  
  
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
  if (dist(75, 600, mouseX, mouseY)<20) {
    stroke(255);
  }  else {
    stroke(0);
  
  }
  fill(142, 137, 137);
  circle(75, 600, 40);
  stroke(0);

  
  
  if (mouseX>150 && mousePressed && circleDrawToggle==0) {
    if (circleDrawToggle==0){
    stroke(activeColor);
    strokeWeight(thickness);
    line(pmouseX,pmouseY, mouseX,mouseY);
    noStroke();
    }
  }
  if (mousePressed && mouseX>50 && mouseX<105 && mouseY>630 && mouseY<660) {
    fill(#C4C4C4);
    rect(150, 0, 850, 700);
  }
  fill(0);
  textSize(20);
  rect(50, 630, 55, 30);
  strokeWeight(10);
  fill(255);
  text("Delete", 50, 650);
  
  stroke(0);
  strokeWeight(10);
  line(75, 350, 75, 500);
  fill(255);
  strokeWeight(3);
  stroke(0);
  circle(75, slider, 25);
  
  if (mousePressed && mouseX>190 && mouseX<200 && mouseY>10 && mouseY<25) {
    
    R=R+1;
    if (R>=255) {
      R=255;
    }
  }
  if (mousePressed && mouseX>190 && mouseX<200 && mouseY>25 && mouseY<40) {

    R=R-1;
    if (R<=0) {
     R=0; 
    }
  }
  if (mousePressed && mouseX>245 && mouseX<255 && mouseY>25 && mouseY<40) {
    G=G-1;
    if (G<=0) {
      G=0;
    }
  
    
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

void mouseDragged() {
    if (dist(75, slider, mouseX, mouseY)<=25 && mouseY>=350 && mouseY <=500) {
      slider= mouseY;
      thickness=(slider-350)/2;
  }
    if(mouseX>150 && circleDrawToggle==1){
      fill(activeColor);
      circle(circleX, circleY, (dist(circleX, circleY, mouseX, mouseY)*2));
                            
}
}
void mousePressed() {
  circleX=mouseX;
  circleY=mouseY;
    if (dist(75, 600, mouseX, mouseY)<20 && mousePressed) {
    
    if (circleDrawToggle==0) {
    circleDrawToggle=1;
  } else {
    circleDrawToggle=0;
  }
  }
}

 
 
 
 
 
