// represents any building in the game
public abstract class Tower extends Unit implements Comparable{
    int _upgradeState;
    int _range;
    boolean _show; //show range
    
    // decreases tower hp by n
    // returns true if tower is destroyed as a result of this damage
    public boolean takeDamage(int n) {
	_hp -= n;
	return ! isAlive();
    }

    // returns true if tower successfully upgraded
    public abstract void upgrade();

    void draw(){
	rect(_xcor*100, _ycor*100 , 10, 10);
    }
    
    void draw(int xcor, int ycor) {
      rect(xcor * 100, ycor * 100, 10, 10);
    }
    
    public int compareTo(Object o){
      return 0;
    }
    
    public boolean isAlive() {
      return _hp > 0;
  }
  
   
   void setCoor(int x, int y) {
   _xcor = x;
   _ycor = y;
 }
 
 
}