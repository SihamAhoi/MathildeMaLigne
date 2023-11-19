
int yPlayer1 = 0;
int yPlayer2 = 0;

int Player1Increment = 0;
int Player2Increment = 0;

void setup () {
  
  size ( 700 , 500 );
  background (0);
  
  }


void drawPlayerAt( int x , int y , color c){
  fill(c);
  rect( x, y, 7, 60);
  
}



void keyPressed(){
int Speed = 5;

  if(key == 'A' || key == 'a') { //player 1 monter
   //  println("touche A"); 
   Player1Increment = -Speed;
   
}
  
  else if (key == 'Q'|| key == 'q') { //player 1 descendre
   // println("touche Q"); 
   Player1Increment = +Speed ;
   
}

  else if (key == 'P'|| key == 'p') { //player 2 monter
  Player2Increment = -Speed ;
  
}

  else if (key == 'M'|| key == 'm') { //player 2 descendre
  Player2Increment = +Speed ; 

}
}


void keyReleased(){
  
   if(key == 'A' || key == 'a'|| key == 'Q'|| key == 'q') { 
   Player1Increment = 0;
   
}

  else if (key == 'P'|| key == 'p'|| key == 'M'|| key == 'm') { 
  Player2Increment = 0;
  

}

}

void players (){
  
  
  yPlayer1 = yPlayer1 + Player1Increment;
  yPlayer2 = yPlayer2 + Player2Increment;
  
  if ( yPlayer1 < 0 ) {
     yPlayer1 = 0 ;
  }
  
  else if (yPlayer1 > 440 ) {
      yPlayer1 = 440 ;
  }
   
  if ( yPlayer2 < 0 ) {
      yPlayer2 = 0;
  }  
  
  else if (yPlayer2 > 440 ) {
      yPlayer2 = 440 ;
  }
  
  drawPlayerAt ( 30, yPlayer1, color(0, 0, 255));
  drawPlayerAt (670 , yPlayer2, color(0, 255, 255));
  
}




void ball(){
  
  
  
}



void draw () {
  
  background(0);
  
  players();
  
  ball();
  
  
}
