class Obstacles{
  
  float resx=1080;
  float resy=480;
  float r=random(10,20);
  
  float x=random(resx+10+r,resx+1000);
  float size=random(80,150);
  float ydown=resy-size;
  float speed=2;
  
  int life;
  
  void createdown(){
    stroke(255);
    fill(150);
    rect(x,ydown,20,35+size-80,7);
  }
  
  void update(){
    float r=random(30,40);
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
    ydown=-100;
  }
}
