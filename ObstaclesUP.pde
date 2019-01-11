class ObstaclesUP{
  
  float resx=1080;
  float resy=480;
  float r=random(10,20);
  
  float x=random(resx+10+r,resx+1000);
  float size = random(35,105);
  float yup=resy-400;
  float speed=2;
  
  int life;
  
  void createup(){
    stroke(255);
    fill(150);
    rect(x,yup,20,size,7);
  }
  
  void update(){
    float r=random(10,20);
    x-=speed;
    if(x<=-10){
      x=resx+10;
      x=random(resx+10+r,resx+1000);
    }
  }
  
  float xaxis(){
    return x; 
  }
  void delete(){
    x=-100;
    yup=-100;
  }
}
