int squareSize;
int numSquares = 8;

void setup(){
 size(800,800);
 squareSize = width/numSquares;
 frameRate(2);
 background(2);
 
 for(int row=0; row < numSquares;row++){
  for(int col=0; col < numSquares;col++){
   
    if(col%2 == row%2){
     fill(color(255,25,25));
     rect(row*squareSize, col*squareSize, squareSize, squareSize); 
    }else{
     fill(color(75,75,75));
     rect(row*squareSize, col*squareSize, squareSize, squareSize);
      }
    }
  }
}

