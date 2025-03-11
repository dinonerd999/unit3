
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
int B;
PGraphics pg;
PGraphics canvas;
PGraphics interphace;
int x;
int y;
int c;
PImage A;
int AD;

void setup() {
  A = loadImage("A.png");
  circleDrawToggle=0;
  thickness=5;
  slider=350;
  //fill(#C4C4C4);
  //rect(0, 0, 1000, 700);
  size(1000, 700);
  //fill(255, 255, 255);
  //rect(0, 0, 150, 700);
  //fill(blue);
  //circle(75, 100, 100);
  //fill(red);
  //circle(75, 250, 100);
  pg= createGraphics(1000, 700);
  canvas= createGraphics(1000, 700);
  interphace= createGraphics(1000, 700);
}

void draw() {
  
  interphace.beginDraw();
  interphace.clear();
  
  interphace.fill(#C4C4C4);
  
  
  interphace.fill(255, 255, 255);
  interphace.rect(0, 0, 150, 700);
  interphace.fill(blue);
  interphace.circle(75, 100, 100);
  
  interphace.fill(red);
  interphace.circle(75, 250, 100);

  
  
  canvas.beginDraw();
  canvas.fill(activeColor);
  
  
    
  println(c, circleDrawToggle);
  
  
  
  interphace.fill(255, 255, 255);
  interphace.rect(0, 0, 500, 50);
  interphace.rect(0, 0, 150, 700);
  interphace.textSize(10);
  interphace.fill(0);
  interphace.text("red", 160, 25);
  interphace.text(R, 175, 25);
  interphace.text("green", 205, 25);
  interphace.text(G, 230, 25);
  interphace.text("blue", 260, 25);
  interphace.text(B, 280, 25);
  interphace.strokeWeight(3);
  interphace.fill(255);
  interphace.rect(190, 10, 10, 15);
  interphace.rect(190, 25, 10, 15);
  interphace.rect(245, 25, 10, 15);
  interphace.rect(245, 10, 10, 15);
  interphace.rect(300, 10, 10, 15);
  interphace.rect(300, 25, 10, 15);
  interphace.noStroke();
  interphace.fill(0);
  interphace.triangle(190, 25, 195, 12, 200, 25);
  interphace.triangle(190, 25, 195, 37, 200, 25);
  interphace.triangle(245, 25, 250, 12, 255, 25);
  interphace.triangle(245, 25, 250, 37, 255, 25);
  interphace.triangle(300, 25, 305, 12, 310, 25);
  interphace.triangle(300, 25, 305, 37, 310, 25);
  
  
  interphace.strokeWeight(10);
  interphace.fill(blue);
  if (dist(75, 100, mouseX, mouseY)<=50) {
    interphace.stroke(255);
  } else {
    interphace.stroke(0);
  }
  interphace.circle(75, 100, 100);
  if (dist(75, 250, mouseX, mouseY)<=50) {
    interphace.stroke(255);
  } else {
    interphace.stroke(0);
  }
  
  interphace.fill(red);
  interphace.circle(75, 250, 100);
  if (dist(75, 600, mouseX, mouseY)<20) {
    interphace.stroke(255);
  }  else {
    interphace.stroke(0);
  
  }
  
  
   
  interphace.fill(142, 137, 137);
  interphace.circle(75, 600, 40);
  interphace.stroke(0);

  
  
  if (mouseX>150 && mousePressed && circleDrawToggle==0) {
    if (circleDrawToggle==0 && AD==0){
    canvas.stroke(activeColor);
    canvas.strokeWeight(thickness);
    canvas.line(pmouseX,pmouseY, mouseX,mouseY);
    canvas.noStroke();
    } 
    if (AD==1) {
      canvas.image(A, mouseX-50, mouseY-50, 100, 100);
    }
  }
  if (mousePressed && mouseX>50 && mouseX<105 && mouseY>630 && mouseY<660) {
    canvas.clear();
    //canvas.fill(#C4C4C4);
    //canvas.rect(150, 0, 850, 700);
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  }
  interphace.fill(0);
  interphace.textSize(20);
  interphace.rect(50, 630, 55, 30);
  interphace.strokeWeight(10);
  interphace.fill(255);
  interphace.text("Delete", 50, 650);
  
  interphace.stroke(0);
  interphace.strokeWeight(10);
  interphace.line(75, 350, 75, 500);
  interphace.fill(255);
  interphace.strokeWeight(3);
  interphace.stroke(0);
  interphace.circle(75, slider, 25);
  
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
  
  if (mousePressed && mouseX>245 && mouseX<255 && mouseY<25 && mouseY>10) {
    G=G+1;
    if (G>=255) {
      G=255;
    }
  }
  
  if (mousePressed && mouseX>300 && mouseX<310 && mouseY<25 && mouseY>10) {
    B=B+1;
    if(B>=255) {
      B=255;
    }
    
  }
  
  if (mousePressed && mouseX>300 && mouseX<310 && mouseY>25 && mouseY<40) {
    B=B-1;
    if (B<=0) {
     B=0; 
    }
  }
  
  if (mousePressed && dist(mouseX, mouseY, 75, 540)<35) {
    if (AD==0) {
      AD=1;
    } else {
      AD=0;
    }
    
  }
  
  
  if(mouseX>150 && circleDrawToggle==1 && mousePressed){
      pg.beginDraw();
      pg.clear();
      pg.fill(activeColor);
      pg.stroke(0);
      pg.circle(circleX, circleY, (dist(circleX, circleY, mouseX, mouseY)*2));
      
      pg.endDraw();                
      }
  if (circleDrawToggle==1 && c==2) {
    canvas.circle(x, y, dist(mouseX, mouseY, x, y)*2);
  }
  background(#B7AEAE);
  
  interphace.fill(R, G, B);
  interphace.circle(350, 25, 30);
  if (mousePressed && dist(mouseX, mouseY, 350, 25)<15) {
    activeColor= color(R,G,B);
  }
  canvas.image(canvas, 0, 0);
  canvas.endDraw();
  interphace.image(A, 25, 490, 100, 100);
  interphace.endDraw();
  image(pg, 0, 0);
  image(canvas, 0, 0);
  image(interphace, 0, 0);
  
  
  c=0;      
}



void mouseDragged() {
  
    if (dist(75, slider, mouseX, mouseY)<=25 && mouseY>=350 && mouseY <=500) {
      slider= mouseY;
      thickness=(slider-350)/2;
  }
    if(mouseX>150 && circleDrawToggle==1){
      pg.beginDraw();
      pg.clear();
      pg.fill(activeColor);
      pg.stroke(0);
      pg.circle(circleX, circleY, (dist(circleX, circleY, mouseX, mouseY)*2));
      pg.endDraw();
      
      
      }
      
}

void mouseReleased() {
  pg.beginDraw();
  pg.clear();
  pg.endDraw();
  if (circleDrawToggle==1) {
    c=2;
  }
  
  if (dist(75, 100, mouseX, mouseY) < 50) {
    
    
    selectInput("Pick an image to load", "imageLoad");
    
  } 
  
  

  if (dist(75, 250, mouseX, mouseY) < 50) {
    activeColor=red;
    selectOutput("Choose a name for your own image file", "saveImage");
  }
  
  }

void mousePressed() {
  x=mouseX;
  y=mouseY;
  if (circleDrawToggle==1) {
    c=1;
  }
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

void saveImage(File f) {
  if (f !=null) {
    PImage save = get( 150, 50, 850, 750);
    save.save(f.getAbsolutePath());
}
}
  
void loadImage(File f) {
  if (f !=null) {
    int n=0;
    while (n<10) {
      PImage pic = loadImage(f.getPath());
      canvas.image(pic, 0, 0);
      n = n + 1;
    }
  }
}
  


 
 
 
 
