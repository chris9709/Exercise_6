class Face extends Monster{
  Face(float xpos, float ypos){
    super(xpos, ypos);
  }
  
  void display(){
    noStroke();
  triangle(x - 30, y - 135, x + 30, y - 135, x, y - 125);
  ellipse(x - 15, y - 110, 40, 40);
  ellipse(x + 15, y - 110, 40, 40);//face
  
  strokeWeight(1);
  stroke(0);
  line(x - 17, y - 115, x - 70, y - 135);
  line(x - 17, y - 113, x - 75, y - 120);
  line(x - 17, y - 110, x - 70, y - 105); 
  line(x + 17, y - 115, x + 70, y - 135);
  line(x + 17, y - 113, x + 75, y - 120);
  line(x + 17, y - 110, x + 70, y - 105);// beard
  
  noStroke();
  fill(80);
  triangle(x, y - 100, x - 20, y - 90, x + 20, y - 90);//mouth..maybe
  
  strokeWeight(8);
  stroke(50);
  point(x - 26,y - 130);
  point(x + 26,y - 130);// eye
  
  }
}