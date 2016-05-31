// represents any building in the game
public abstract class Tower extends Unit{
    int _upgradeState;

    // decreases tower hp by n
    // returns true if tower is destroyed as a result of this damage
    public boolean takeDamage(int n) {
	_hp -= n;
	return ! isAlive();
    }

    // returns true if tower successfully upgraded
    public abstract boolean upgrade();

    void draw(){
	rect(_xcor*100, _ycor*100 , 10, 10);
    }
    
}