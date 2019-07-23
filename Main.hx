package ;

import Player;
import Room;

class Main {
    static public function main():Void {
        var startingRoom: Room = new Room(1, "Starting Room", "It is dark and you can see almost nothing.");
        var nextRoom: Room = new Room(2, "Next Room", "You can see slightly more more light");
        startingRoom.north = nextRoom;
        nextRoom.south = startingRoom;

        var player:Player = new Player("player", startingRoom);
        Sys.println("Welcome");
        player.showCurrentRoom();

        var nextMove = null;
        while (true) {
            nextMove = Sys.stdin().readLine();
            if (nextMove == "go north") {
                player.goNorth();
            } else if (nextMove == "go south") {
               player.goSouth();
            } else if (nextMove == "go east") {
               player.goEast();
            } else if (nextMove == "go west") {
               player.goWest();
            }
            else if (nextMove == "quit" || nextMove == "exit") {
                break;
            } else {
                Sys.println("What?");
            }
        }
    }
}
