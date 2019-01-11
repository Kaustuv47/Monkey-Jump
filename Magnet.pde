ObstaclesUP[] obsup = new ObstaclesUP[5];
Obstacles[] obsdown = new Obstacles[5];
Magneton mag= new Magneton();

PFont outcome,lifestate,gameover;

int state=0,rcstate,count=0;
float r;
float xaxis;
int life=1;
float score=0;
float store;

void setup(){
  smooth();
  size(1080,480);//width,height
  background(50,50,50);
  stroke(200);
  strokeWeight(10);
  line(width,height-40,0,height-40);
  stroke(200);
  strokeWeight(10);
  line(width,height-200,0,height-200);
  fill(255);
  stroke(255);
  rect(100,height-110,40,70); 
  for(int i=0;i<obsup.length;i++){
    obsup[i] = new ObstaclesUP();
    obsdown[i] = new Obstacles();
  }
  
  outcome= createFont("Times",16,true);
  lifestate = createFont("Times",16,true);
  gameover = createFont("Times",16,true);
  
  mag.loadup();
  mag.loaddown();
}
void draw(){
  if(life != 0){
    score++;
  }
  
  background(50,50,50);
    stroke(200);
  strokeWeight(10);
  line(width,height-40,0,height-40);
  stroke(200);
  strokeWeight(10);
  line(width,height-400,0,height-400);
  
  if(count%100==0){
  for(int i=0;i<obsup.length;i++){
      obsup[i].createup();
      obsup[i].update();
    }
    for(int i=0;i<obsdown.length;i++){
      obsdown[i].createdown();
      obsdown[i].update();
    }
  }
  
  if (state == 0){
    mag.createdown();
    rcstate= state;
  }
  else{
    mag.createup();
    rcstate = state;
  }
  
  for(int i=0;i<obsup.length;i++){
    xaxis = obsup[i].xaxis();
      if (xaxis >= 138 && xaxis <= 140 && state == 1){
        delay(1000);
        life--;
      }
    }
    
    for(int i=0;i<obsdown.length;i++){
          xaxis = obsdown[i].xaxis();
      if (xaxis >= 138 && xaxis <= 140 && state == 0){
        delay(1000);
        life--;
      }
    }
    
    if(life == 0){
      textFont(gameover,36);
      text("GameOver! Go to Hell\nScore -"+score,(width/2)-50,(height/2)-10);
      for(int i=0;i<obsup.length;i++){
      obsup[i].delete();
    }
    for(int i=0;i<obsdown.length;i++){
      obsdown[i].delete();
    }
    
    
  }
  
  textFont(outcome,36);
      text("Score -"+score,20,50);
      
  textFont(lifestate,36);
      text("Life Remaining -"+life,width-280,50);
}

  void keyPressed(){
    if (state == 0){
      mag.createup();
      state = 1;
      }
    else{
     mag.createdown();
     state = 0;
      }
  }
