// represents a sniper tower
/* Properties:
   - one enemy at a time
   - relatively slow attack rate
   - semi-high attack power
   - high crit chance
   - high range
   - can attack air
   - medium hp
*/

public class Sniper extends Defense {
  
      PImage icon;
      
    public Sniper(int x, int y) {
	super(x, y); 
	_hp = 250;
  _maxHP = 250;
	_attackPower = 50;
	_critChance = .1;
	_range = 300;
	_attackAir = true;
	_attackRate = 60; // once per 2 seconds
  icon = loadImage("sniper.gif");
    }

    public void upgrade() {
	_attackPower = (int) (_attackPower * 1.2);
	_range = (int) (_range * 1.2);
	_hp = (int) (_hp * 1.1);
	_upgradeState += 1;
    }
    
    
    void draw(){
      
      imageMode(CENTER);
    image(icon, _xcor, _ycor, 50, 50); 
    imageMode(CORNER);
        fill(0);     
    }
    void draw(LList<Monster> monsterList) {
      super.draw(monsterList);
          imageMode(CENTER);
    image(icon, _xcor, _ycor, 50, 50);
    imageMode(CORNER);
    }
}
	