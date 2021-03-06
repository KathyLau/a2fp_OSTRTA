import java.util.ArrayList;
// represents a resource tower

public class Resource extends Tower{
  int _capacity;
  float _rate; // # of resources per second
  boolean _isGold; //true if a gold mine, false otherwise
  long startTime;
  PImage icon;
  int _gold;
  int _elixir;
  
    // constructor
    public Resource(int x, int y) {
      _hp = 200;
      _maxHP = 200;
      _xcor = x;
      _ycor = y;
      _rate = .5;
      _upgradeState = 0;
      _mp = 150; //subject to change
      _capacity = 500;
      _isGold = true;
      startTime = System.nanoTime();
      
      _gold = 5;
      _elixir = 5;
    }
    
    

    void draw() {
      icon = loadImage("goldmine.png");
      image(icon, _xcor + icon.width/2, _ycor + icon.height/2, 60, 60); 
    }


  //if the gold mine contains gold, and is clicked on
  //measure the time ellapsed from when gold was last collected
  //restart the time
  //return gold
  
  int collectResource(Homebase base){
      long endTime = System.nanoTime() - startTime;
      int amountCollected = (int) (endTime / 1000000000.0 * _rate);
      if ( _isGold )
        base._gold += amountCollected;
      else
        base._elixir += amountCollected;
      
      // reset timer
      startTime = System.nanoTime();
      return amountCollected;
  }
  
//Upgrading gold mine increases max gold that can be collected and HP level
    public void upgrade() {
      _capacity +=500;
      _hp += 40;
    }

}