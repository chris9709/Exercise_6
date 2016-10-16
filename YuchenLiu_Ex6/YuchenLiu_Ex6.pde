
 Monster[] myMons= new Monster[4];
 float xstart = 250;
 float ystart = 270;
 
void setup(){
  
    size(500, 500);
  background(5, 108, 27);// ground(grass)
  

   
   
  for (int i = 0; i < 4; i ++){
    if(i == 0){
      myMons[i] = new Body(xstart, ystart);}
      else if( i == 1){
      myMons[i] = new Face(xstart, ystart);}
      else if (i == 2){
      myMons[i] = new Weakness(xstart, ystart, 12);}
      else if (i == 3){
      myMons[i] = new Hand(xstart, ystart);}
  }
  
    
}


void draw(){

  
  noStroke();
  fill(187, 218, 250);
  rect(0,0,500,400);// sky
  
  stroke(0);
  fill(232, 174, 56);
  rect(360, 340, 100, 60);
  fill(98, 77, 36);
  triangle(410, 295, 360, 340, 460, 340);
  fill(234, 138, 90);
  rect(380, 370, 20, 30);
  strokeWeight(3);
  point(385, 385);
  // a house
  // just to show that the green part is ground 
  // and show that the monster is huge
  // and then the monster is floating    
  
  

  for( int i = 0; i <4; i ++){
      
    myMons[i].move();
    myMons[i].throwapple(20);
    myMons[i].display();
    myMons[i].reset();
   
    
  }
    
  
  
}