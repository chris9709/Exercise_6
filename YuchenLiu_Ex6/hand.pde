class Hand extends Monster{
  Hand(float xpos, float ypos){
    super(xpos, ypos);
  }
  float ax;
  float ay = 0;
    boolean t1 = true;
    boolean t2 = true;
  void display(){
    ax = x;
    if(t1){
      ay = y;
      t1 = false;
    }
     strokeWeight(1);
  stroke(0);
  fill(178, 174, 147);
  quad(x + 58, y - 69, x + 116, y - 19, x + 112, y - 2, x + 75, y - 35);
  ellipse(x + 120, y - 9, 20, 20);// left hand
  
  fill(255, 0, 0);
  ellipse(ax - 70, ay - 50, 40, 40);
  noFill();
  arc(ax - 72, ay - 75, 30, 30, 1, 2);
  arc(ax - 58, ay - 68, 30, 30, 2.7, 4);
  // an apple in its right hand!
  // show that it is a field mouse
  
  fill(178, 174, 147);
  ellipse(x - 89, y - 50, 20, 20);// right hand
  
  stroke(250, 8, 36);
  strokeWeight(3);
  line(x - 18, y - 140, x - 34, y - 120);
  line(x - 24, y - 140, x - 18, y - 132);
  line(x - 28, y - 120, x - 34, y - 126);// scar
  
  noFill();
  strokeWeight(15);
  stroke(178, 174, 147);
  arc(x - 90, y - 10, 90, 70, 1, 3.6);// tail
  noStroke();
  fill(178, 174, 147);
  triangle(x - 145, y - 31, x - 114, y - 18, x - 118, y - 45);
  
  noFill();
  strokeWeight(10);
  stroke(131, 125, 102);
  line(x + 120, y - 9, x + 140, y - 22);
  
  strokeWeight(1);
  stroke(0);
  fill(222, 222, 222);
  triangle(x + 139, y - 27, x + 153, y - 12, x + 180, y - 32);// a knife
  }
  
  void throwapple(float v){
    float vv = 0;
    if(t2){
    vv = v;
    t2 = false; 
  }
    ay = ay - vv;
    vv = vv - 2;
    if(vv <= -v){
      vv = v;}
  }
}