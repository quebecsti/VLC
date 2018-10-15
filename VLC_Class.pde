class VLC {

  String serverIP; //<>//
  int portNumber;
  String password;
  String enter = "\r\n";
  Client client;
  PApplet parent_app;

  VLC( PApplet ipa, String tempIP, int tempPort, String tempPass) {
println(" here");
    parent_app = ipa;
    serverIP = tempIP;
    portNumber = tempPort;
    password  = tempPass;
  }

  void connect() {
    println("connect");
    client = new Client(parent_app, serverIP, portNumber); //<>//
    client.write(password+enter);
  }

  void play() {
    println("play"); //<>//
    client.write("play" +enter); //<>//
  }

  void next() {
    println("next"); //<>//
    client.write("next" +enter); //<>//
  }

  void pause() {
    println("pause"); //<>//
    client.write("pause" +enter); //<>//
  }
}
