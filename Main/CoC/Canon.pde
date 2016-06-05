// represents a canon tower
/* Properties:
   - hits multiple at once
   - medium attack rate
   - low attack power
   - low crit chance
   - low range
   - can't attack air
   - medium hp
*/

public class Canon extends Defense {
    
  PImage icon;
  
    public Canon(int x, int y) {
	super(x, y); 
	_hp = 350;
	_attackPower = 25;
	_critChance = .05;
	_range = 100;
	_splashRadius = 50;
	_attackAir = false;
	_attackRate = 60; // once per second
        
        _mp = 200;
    }

    public void upgrade() {
	_attackPower = (int) (_attackPower * 1.1);
	_range = (int) (_range * 1.1);
	_hp = (int) (_hp * 1.1);
	_splashRadius = (int) (_splashRadius * 1.1);
	_upgradeState += 1;
    }
    
    void draw() {
    icon = loadImage("canon.png");
    image(icon, _xcor, _ycor, 50, 50); 
    }

}
	
