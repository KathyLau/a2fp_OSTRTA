public class Event implements Comparable{
  int hour;
  int minute;
  String event;

  
  public Event(){
    try{
      hour = Integer.parseInt(JOptionPane.showInputDialog("Enter a hour"));
    }
    catch (Exception e){
      hour = 0;
    }
    try{
      minute = Integer.parseInt(JOptionPane.showInputDialog("Enter a minute"));
    }
    catch (Exception e){
      minute = 0;
    }
    event = JOptionPane.showInputDialog("Enter Event Name");
  }
  
  void draw(int xcor, int ycor){
    textSize(20);
    if ( minute == 0 )
      text(hour + ":" + minute + "0:   " + event, xcor, ycor);
    else
      text(hour + ":" + minute + ":     " + event, xcor, ycor);
  }
  
  public int compareTo(Object e){
    
    return ((((Event)e).hour)*60+((Event)e).minute) - ((this.hour)*60+this.minute);
}
}