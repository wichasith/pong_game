PongPaddle paddle = new PongPaddle(0,0,0) ;

void setup() {
  size(700,500) ; 
  
  
}

void draw() {
  background(0) ;
  rect(width/2,0,10,height) ;
  paddle.draw() ;
  
}


class PongPaddle {
  float posX , posY , size ;
  
  PongPaddle(float posX , float posY , float size){
    this.posX = posX ; 
    this.posY = posY ;
    this.size = size ;
   
  }
  
  void draw() {
    fill(255 ) ;
    rect(0 , height/2 -80 , 30,160) ;
    rect(width -30 , height/2 -80 , 30,160) ;
    
  }
  
  void bounce_ball() {
  //in coming   
    
  }
}

class PongBall {
  float posX , posY , size = 50 , velocity_X , velocity_Y ;
  
  PongBall(float posX , float posY , float size , float velocity_X , float velocity_Y){
    this.posX = posX ; 
    this.posY = posY ;
    this.size = size ;
    this.velocity_X = velocity_X ;
    this.velocity_Y = velocity_Y ;

  }
  
  void move() {
  //incoming
    
  }
  
  void draw() {
    ellipse(posX,posY,size,size) ;   
    
    
  }
  
}


class PongGame {
  
  PongGame() {
  }
  
  void serve_ball() {
    //incoming  
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
