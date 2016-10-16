class Weakness extends Monster{
  int s;
  float wx, wy;
  Weakness(float xpos, float ypos, int size){
    super(xpos, ypos);
    wx = x;
    wy = y;
    s = size;}
    
    void reset(){
      wx = wx + random(-1, 1);
      wy = wy + random(-1, 1);
      if((wx > x + 50)||(wx < x - 50)||(wy > y + 50)||(wy < y - 50)){
        wx = x;
        wy = y;
      }
      
    }
    void display(){
      strokeWeight(5 * s / 12);
      stroke(245, 35, 220);
      line(wx - s, wy - s, wx + s, wy + s);
      line(wx + s, wy - s, wx - s, wy + s);// a monster should have its weekness
      }
      }