class Body extends Monster{
 
  
  
  Body(float xpos, float ypos){
    super(xpos, ypos);
  }
    
    
    void display(){
     strokeWeight(1);
     stroke(0);
     fill(178, 174, 147);
     triangle(x - 60, y - 195, x - 25, y - 175, x - 55, y - 147);// right ear
     triangle(x + 60, y - 195, x + 25, y - 175, x + 55, y - 147);// left ear
     ellipse(x, y - 120, 120, 120);// head
     arc(x, y, 160, 200, -0.95, 4.1, OPEN);// body 
     noStroke();
     fill(250, 248, 237);
     ellipse(x, y, 80, 100);//belly
  }
}