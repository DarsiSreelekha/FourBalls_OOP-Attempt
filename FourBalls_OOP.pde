public class FourBalls_OOP extends PApplet{
  public static final int Height=480;
  public static final int Diameter=10;
  public static final int Width=640;

  int x1,x2,x3,x4=0;  
  Ball b1;
  Ball b2;
  Ball b3;
  Ball b4;
  public static void main(String[] args){
  PApplet.main("FourBalls_OOP",args);
  }
  @Override
  public void settings(){
  super.settings();
  size(Width,Height);
  }
  @Override
  public void setup(){
  b1 = new Ball(x1,Height/5,Diameter,Diameter);
  b2 = new Ball(x2,2*Height/5,Diameter,Diameter);
  b3 = new Ball(x3,3*Height/5,Diameter,Diameter);
  b4 = new Ball(x4,4*Height/5,Diameter,Diameter);

  }
  @Override
  public void draw(){
    b1.move_ball(1);
    b2.move_ball(2);
    b3.move_ball(3);
    b4.move_ball(4);
  }

  class Ball{
  public int a,b,c,d;
  public Ball(int a, int b, int c, int d){
  this.a=a;
  this.b=b;
  this.c=c;
  this.d=d;
  }
  private void move_ball(int x){
    ellipse(a,b,c,d);
    a+=x;
    
    
      
  }


  }
}
