import processing.net.*;

VLC vlc1;
VLC vlc2;
//VLC vlc3;

public void setup() {
  size(20, 20, JAVA2D);

  vlc1 = new VLC(this, "127.0.0.1", 4212, "1234");
  vlc2 = new VLC(this, "127.0.0.1", 4213, "1234");
 // vlc3 = new VLC(this, "127.0.0.1", 4212, "1234");
}


void draw() {
vlc1.connect(); 
  vlc2.connect();
  vlc1.play();
  vlc2.next();
  
  //vlc2.play();
  //vlc3.next();
  
  exit();
}
