class Magneton{
  float resx=1080;
  float resy=480;
  float x,y;
  float magstate;
  
  PImage[] monkeydown = new PImage[12];
  PImage[] monkeyup = new PImage[12];
  
  int count=0,frame;
  
  void loaddown(){
   monkeydown[0] = loadImage( "monkeydown0.gif" );
  monkeydown[1] = loadImage( "monkeydown1.gif" );
  monkeydown[2] = loadImage( "monkeydown2.gif" );
  monkeydown[3] = loadImage( "monkeydown3.gif" );
  monkeydown[4] = loadImage( "monkeydown4.gif" );
  monkeydown[5] = loadImage( "monkeydown5.gif" );
  monkeydown[6] = loadImage( "monkeydown6.gif" );
  monkeydown[7] = loadImage( "monkeydown7.gif" );
  monkeydown[8] = loadImage( "monkeydown8.gif" );
  monkeydown[9] = loadImage( "monkeydown9.gif" );
  monkeydown[10] = loadImage( "monkeydown10.gif");
  monkeydown[11] = loadImage( "monkeydown11.gif");
 }
 
 void loadup(){
  monkeyup[0] = loadImage( "monkeyup11.gif" );
  monkeyup[1] = loadImage( "monkeyup10.gif" );
  monkeyup[2] = loadImage( "monkeyup9.gif" );
  monkeyup[3] = loadImage( "monkeyup8.gif" );
  monkeyup[4] = loadImage( "monkeyup7.gif" );
  monkeyup[5] = loadImage( "monkeyup6.gif" );
  monkeyup[6] = loadImage( "monkeyup5.gif" );
  monkeyup[7] = loadImage( "monkeyup4.gif" );
  monkeyup[8] = loadImage( "monkeyup3.gif" );
  monkeyup[9] = loadImage( "monkeyup2.gif" );
  monkeyup[10] = loadImage( "monkeyup1.gif");
  monkeyup[11] = loadImage( "monkeyup0.gif");
}
 
 void createup(){ 
   if(count%7==0)
     frame = frameCount%11;
   image( monkeyup[frame],100,resy-400);
   count++;
 }
 void createdown(){
   if(count%7==0)
     frame = frameCount%11;
   image( monkeydown[frame],100,resy-125);
   count++;
 }
}
