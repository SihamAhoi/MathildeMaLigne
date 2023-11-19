
int yPlayer1 = 0;
int yPlayer2 = 0;

int Player1Increment = 0;
int Player2Increment = 0;

void setup () {
  
  size ( 700 , 500 );
  background (0);
  
  }

void drawPlayerAt( int x , int y ){
  rect( x, y, 7, 60);

  
}



void keyPressed(){
int Speed = 10;

  if(key == 'A' || key == 'a') { //player 1 monter
   //  println("touche A"); 
   yPlayer1 = yPlayer1 - Speed ;
   
}
  
  else if (key == 'Q'|| key == 'q') { //player 1 descendre
   // println("touche Q"); 
   yPlayer1 = yPlayer1 + Speed ;
   
}

  else if (key == 'P'|| key == 'p') { //player 2 monter
  yPlayer2 = yPlayer2 - Speed ;
  
}

  else if (key == 'M'|| key == 'm') { //player 2 descendre
  yPlayer2 = yPlayer2 + Speed ;

}
}

void players (){
  drawPlayerAt ( 30, yPlayer1);
  drawPlayerAt (670 , yPlayer2);
}




void ball(){
  
  
  
}



void draw () {
  
  background(0);
  
  players();
  
  ball();
  
  
}
