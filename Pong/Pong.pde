//The players
int yPlayer1 = 0;
int yPlayer2 = 0;

int Player1Increment = 0;
int Player2Increment = 0;

//The bar
int barWidth = 14;
int barHeight = 90;
int xBar1 = 30;
int xBar2 = 700 - 30 - barWidth;

//The ball
int xCercle;
int yCercle;

int xCercleIncrement;
int yCercleIncrement;

void setup () {
  
  size ( 700 , 500 );
  background (33, 33, 33);
  xCercle = width / 2;
  yCercle = height / 2;
  
  int ballSpeed = 9;
  
  xCercleIncrement = (int)random(ballSpeed) - ballSpeed / 2;
  yCercleIncrement = (int)random(ballSpeed) - ballSpeed / 2;
  
  if(xCercleIncrement == 0) {
     xCercleIncrement = 1;
  }

  if(yCercleIncrement == 0) {
     yCercleIncrement = 1;
  }
  
}


void drawPlayerAt( int x , int y , color c){
  fill(c);
  rect( x, y, barWidth, barHeight);
  
}



void keyPressed(){
  int Speed = 10;

  if(key == 'A' || key == 'a') { //player 1 monter
     //  println("touche A"); 
      Player1Increment = -Speed;
   
    }else if (key == 'Q'|| key == 'q') { //player 1 descendre
     // println("touche Q"); 
      Player1Increment = +Speed ;
   
    }else if (key == 'P'|| key == 'p') { //player 2 monter
      Player2Increment = -Speed ;
  
    }else if (key == 'M'|| key == 'm') { //player 2 descendre
      Player2Increment = +Speed ; 

    }
    
}


void keyReleased(){
  
   if(key == 'A' || key == 'a'|| key == 'Q'|| key == 'q') { 
      Player1Increment = 0;
    }else if (key == 'P'|| key == 'p'|| key == 'M'|| key == 'm') { 
      Player2Increment = 0;
 
    }

}

void players (){
  
  int ymax = height - barHeight;
  yPlayer1 = yPlayer1 + Player1Increment;
  yPlayer2 = yPlayer2 + Player2Increment;
  
  if ( yPlayer1 < 0 ) {
     yPlayer1 = 0 ;
   }else if (yPlayer1 > ymax ) {
      yPlayer1 = ymax ;
   }
   
  if ( yPlayer2 < 0 ) {
      yPlayer2 = 0;
   }else if (yPlayer2 > ymax ) {
      yPlayer2 = ymax;
   }
  
  drawPlayerAt ( xBar1, yPlayer1, color(0, 0, 255));
  drawPlayerAt (xBar2 , yPlayer2, color(0, 255, 255));
  
}

  
  
void ball(){
  
  int dCercle = 15;
  int rCercle = dCercle / 2;
 
  xCercle += xCercleIncrement; // a += b ca veut dire a = a + b
  yCercle += yCercleIncrement;
  
  int leftCercle = xCercle - rCercle;
  int rightCercle = xCercle + rCercle;
  
  if (xCercle < xBar1 + barWidth ){
    println("c'est PERDUUUUUUU — Looser one");
   }else if (xCercle > xBar2 ){
    println("c'est PERDUUUUU — Looooser Twooe");
   }else {
  
    if (yCercle < rCercle) {
        yCercle = rCercle;
        yCercleIncrement = -yCercleIncrement;
     }else if(yCercle > height - rCercle) {
       yCercle = height - rCercle; 
       yCercleIncrement = -yCercleIncrement;
     }
    
    
     if(leftCercle <= xBar1 + barWidth && yCercle >= yPlayer1 && yCercle <= yPlayer1 + barHeight && xCercleIncrement < 0) {
         xCercleIncrement = -xCercleIncrement;
    }
     if(rightCercle >= xBar2 && yCercle >= yPlayer2 && yCercle <+ yPlayer2 + barHeight && xCercleIncrement > 0){
         xCercleIncrement = -xCercleIncrement;
     }
  }
  
  
 fill(255, 250,231);
 circle(xCercle, yCercle, dCercle);

}



void draw () {
  
  background(0);
  
  players();
  
  ball();
  
  
}
