
PongPaddle paddle1 = new PongPaddle(1) ;
PongPaddle paddle2 = new PongPaddle(2) ;
PongBall ball = new PongBall() ;
PongGame game = new PongGame() ;
void setup() {
  size(700, 500) ;
}

void draw() {
  noStroke() ;
  background(0) ;
  rect(width/2-5, 0, 10, height) ;
  paddle1.draw(0, 30, 160) ;
  paddle2.draw(width -30, 30, 160) ;
  if (mouseX > width/2) {
    paddle2.click_to_move() ;
  } else {
    paddle1.click_to_move() ;
  }
  ball.draw() ;
  ball.move() ;
  game.draw() ;
  game.update() ;
  //if (ball.get_ball_X() < width/2) {
  paddle1.bounce_ball() ;
  //}
  //if (ball.get_ball_X() > width/2) {
  paddle2.bounce_ball() ;
  //}
}


class PongPaddle {
  float posX, posY, size = 30, velocity_X = 5 , num ;

  PongPaddle(int a) {
    posY = height+80 ;
    num = a ;
  }

  void draw(float posX, float size, float point ) {
    fill(255 ) ;
    
    this.posX = posX ;
    
    //create paddle
    rect(this.posX, this.posY, size, point) ;
    
    
  }

  void bounce_ball() {
    if (posX < ball.get_ball_X() &&  posX+30 > ball.get_ball_X()  && posY < ball.get_ball_Y() && posY+160 > ball.get_ball_Y()) {
      ball.velocity_X = ball.velocity_X * -1 ;
    }
    if (ball.get_ball_X() == 0 ) {
      velocity_X = 5 ;
      print("1") ;
    }
    if (ball.get_ball_X() == width ) {
      velocity_X = 5 ;
      print("1") ;
    }
  }
  float get_speed() {
    return velocity_X ;
  }

  void click_to_move() {
    if (dist(posX, 0, mouseX, 0 ) < width/2 ) {
      if (mousePressed) {
        posY = mouseY ;
      }
    }
    if (dist(posX, 0, mouseX, 0 ) > width/2 ) {
      if (mousePressed) {
        posY = mouseY ;
      }
    }
  }
}

class PongBall {
  float posX = 350, posY = 250, size = 50,velocity_X = 5 , velocity_Y = 2 ;

  PongBall() {
  }

  void move() {
    posX = posX + velocity_X ;
    posY = posY + velocity_Y ;
    
    if (posY > height-size || posY < 0+size) {
      velocity_Y = velocity_Y * (-1) ;
    }
  }

  void draw() {

    ellipse(posX, posY, size, size) ;
    if (ball.get_ball_X() == 0 ) {
      posX = 350 ;
      posY = 250 ;
    }
    if (ball.get_ball_X() == width ) {
      posX = 350 ;
      posY = 250 ;
    }
  }

  void change_move() {
    velocity_X = velocity_X * (-1) ;
  }

  float get_ball_X() {
    return posX ;
  }

  float get_ball_Y() {
    return posY ;
  }
}


class PongGame {
  int score_player1 = 0, score_player2 = 0 ;

  PongGame() {
  }


  void update() {
    if (ball.get_ball_X() == 0 ) {
      score_player2 += 1 ;
      
    }
    if (ball.get_ball_X() == width ) {
      score_player1 += 1 ;
    }
    
  }


  void draw() {
    textSize(50) ;
    text(score_player1, 150, 100 ) ;
    text(score_player2, 500, 100 ) ;
  }
}
