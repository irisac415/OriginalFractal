public void setup(){
  size(500,500);
  background(0);
  myfractal(250,350,300);
  myFractal(250,350,300);
  fill(190,220,190);
  noStroke();
  rect(0,351,500,500);
  strokeWeight(2);
  stroke(255);
  line(0,350,500,350);
 
}

public void draw(){
 
}
public void mousePressed(){
   background(0);
   fractal1(250,350,300);
   fractal2(250,350,300);
   fill(190,220,190);
   noStroke();
   rect(0,350,500,500);
   strokeWeight(2);
   stroke(255);
   line(0,350,500,350);
   
}

public void keyPressed(){
  if(key == ' '){
    background(0);
    myfractal(250,350,300);
    myFractal(250,350,300);
    fill(190,220,190);
    strokeWeight(3);
    noStroke();
    rect(0,350,500,500);
    strokeWeight(2);
    stroke(255);
    line(0,350,500,350);
 
  }
}

public void myFractal(int x,int y, int size){
  noFill();
  fill(150,210,255,100);
  stroke(255);
  strokeWeight(2);
  arc(x, y, size, size, PI, TWO_PI);
  if(size>10)
  {
    myFractal(x-size/2,y,size/2);
    myFractal(x+size/2,y,size/2);
  }
}

public void myfractal(int x,int y, int size){
  fill(170,230,255);
  stroke(255);
  strokeWeight(2);
  arc(x, y, size, size, PI+HALF_PI+QUARTER_PI,TWO_PI);
  if(size>10)
  {
    myfractal(x-size/2,y,size/2);
    myfractal(x+size/2,y,size/2);
  }
}

public void fractal1(int x,int y, int size){
  fill(150,210,255);
  stroke(255);
  strokeWeight(1);
  arc(x, y, size, size, PI,QUARTER_PI+PI);
  if(size>10)
  {
    fractal1(x-size/2,y,size/2);
    fractal1(x+size/2,y,size/2);
  }
}

public void fractal2(int x,int y, int size){
  noFill();
  fill(170,230,255,100);
  stroke(255);
  strokeWeight(2);
  arc(x, y, size, size, PI, TWO_PI);
  if(size>10)
  {
    fractal2(x-size/2,y,size/2);
    fractal2(x+size/2,y,size/2);
  }
}
