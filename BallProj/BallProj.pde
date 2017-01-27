Ball[] balls;

void setup(){
  size(800,800);
  balls = new Ball[200];
  loadBalls();
  
}

void draw(){
  background(236,163,255);
  for(int i=0;i<200;i++){
   balls[i].render();
   balls[i].update();
   balls[i].checkEdges();
  }
  
}

void loadBalls(){
  balls = new Ball[200];
  for(int i=0;i<200;i++){
   int r = (int)(Math.random()*40)+20;
   int x = (int)(random(width));
   int y = (int)(random(height));
   color c = color(random(255),random(255),random(255));
   balls[i] = new Ball(r,c,x,y);
  }
}

//===========================================================  

class Ball{
 int radius = 0;
 color clr = 0;
 int xLoc = 0;
 int yLoc = 0;
 int xSpeed = (int)(Math.random()*5);
 int ySpeed = (int)(Math.random()*5);
 
   Ball(int r, color c, int x, int y){
     radius = r;
     clr = c;
     xLoc = x;
     yLoc = y;
   }
   
   void render(){
    fill(clr);
    ellipse(xLoc, yLoc, radius, radius);
   }
   
   void update(){
     xLoc += xSpeed;
     yLoc += ySpeed;
   }
   
   void checkEdges(){
     if(xLoc>width) xSpeed *= -1;
     if(yLoc>height) ySpeed *= -1;
     if(xLoc<0) xSpeed *= -1;
     if(yLoc<0) ySpeed *= -1;
     
   }
}