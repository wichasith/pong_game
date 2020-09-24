
PongPaddle paddle1 = new PongPaddle() ;
PongPaddle paddle2 = new PongPaddle() ;
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
}


class PongPaddle {
  float posX, posY, size = 30, velocity_X = 5;

  PongPaddle() {
    posY = height+80 ;
  }

  void draw(float posX, float size, float point ) {
    fill(255 ) ;

    //create paddle
    rect(posX, this.posY, size, point) ;
  }

  void bounce_ball() {
    if (posX < ball.get_ball_X() &&  posX+80 > ball.get_ball_X()  && posY < ball.get_ball_Y() && posY+200 > ball.get_ball_Y()) {
      velocity_X = velocity_X * (-1.1) ;
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
  float posX = 350, posY = 250, size = 50, velocity_Y = 0, velocity_X = 5;

  PongBall() {
  }

  void move() {
    //speed = PongPaddle.get_speed() ;
    posX = posX + velocity_X ;

    //bounce X
    if (posX > width-size || posX < 0+size) {
      velocity_X = velocity_X * (-1) ;
    }

    //bounce Y
    if (posY > height-size || posY < 0+size) {
      velocity_Y = velocity_Y * (-1) ;
    }
  }

  void draw() {

    //create ball
    ellipse(posX, posY, size, size) ;
  }

  void change_move() {
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
