package ;

import Player;
import Room;

class Main {
    static public function main():Void {
        trace("Hello World, enter name:");
        var playerName = Sys.stdin().readLine();
        var p:Player = new Player(playerName);
        trace("Welcome " + p.name);

        var room: Room = new Room(1, "Starting Room");    
    }
}
