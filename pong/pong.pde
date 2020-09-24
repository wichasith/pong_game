
PongPaddle paddle1 = new PongPaddle() ;
PongPaddle paddle2 = new PongPaddle() ;
PongBall ball = new PongBall() ;
void setup() {
  size(700,500) ; 

  
}

void draw() {
  noStroke() ;
  background(0) ;
  rect(width/2-5,0,10,height) ;
  paddle1.draw(0 ,30,160) ;
  paddle2.draw(width -30 ,30,160) ;
  if (mouseX > width/2){
  paddle2.click_to_move() ;
  }
  else{
  paddle1.click_to_move() ;
  }
  ball.draw() ;
  ball.move() ;
}


class PongPaddle {
  float posX , posY , size = 30 ;
  
  PongPaddle(){
    posY = 0 ;
  }
  
  void draw(float posX ,float size , float point ) {
    fill(255 ) ;
    
    //create paddle
    rect(posX,this.posY,size,point) ;
    
  }
  
  void bounce_ball() {
    if(this.posX > ball.get_ball_X()) ;
    
    
  }
  
  void click_to_move() {
    if(dist(posX , 0 , mouseX , 0 ) < size ) {
      if(mousePressed) {
        posY = mouseY ;  
        
      }
    }
    if(dist(posX , 0 , mouseX , 0 ) > width - size ) {
      if(mousePressed) {
        posY = mouseY ;  
        
      }
    }
    
  }
}

class PongBall {
  float posX = 350 , posY = 250 , size = 50 , velocity_X = 5 , velocity_Y = 0 ;
  
  PongBall(){

  }
  
  void move() {
    posX = posX + velocity_X ;
    
    //bounce X
    //if (posX > width-size || posX < 0+size) {
      //velocity_X = velocity_X * (-1.1) ;
    //}
    
    //bounce Y
    if (posY > height-size || posY < 0+size) {
      velocity_Y = velocity_Y * (-1) ;
    }  
  }
  
  void draw() {
    
    //create ball
    ellipse(posX,posY,size,size) ;   
    
    
  }
  
  float get_ball_X(){
    return posX ;
  }
  
  float get_ball_Y() {
   return posY ; 
  }
}


class PongGame {
  
  PongGame() {
  }
  
  
  void update() {
    //incoming
    
  }
  
  void one_touch_move() {
    //incoming
    
    
  }
  
  void draw() {
    
  }
  
}
