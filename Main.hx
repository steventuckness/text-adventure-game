package ;

import Player;
import Room;

class Main {
    static public function main():Void {
        var startingRoom: Room = new Room(1, "Starting Room", "It is dark and you can see almost nothing.");
        var nextRoom: Room = new Room(2, "Next Room", "You can see slightly more more light");
        var thirdRoom: Room = new Room(3, "Dirty Room", "You see dirt everywhere");
        startingRoom.north = nextRoom;
        nextRoom.south = startingRoom;
        nextRoom.west = thirdRoom;
        thirdRoom.east = nextRoom;

        var player:Player = new Player("player", startingRoom);
        var commandParser:CommandParser = new CommandParser();
        Sys.println("Welcome");
        player.showCurrentRoom();

        var nextMove = null;
        while (true) {
            nextMove = Sys.stdin().readLine();
            commandParser.parseCommand(nextMove);

            if (commandParser.verb == "go") {
                if (commandParser.noun == "north") {
                    player.goNorth();
                } else if(commandParser.noun == "south") {
                    player.goSouth();
                } else if(commandParser.noun == "west") {
                    player.goWest();
                } else if(commandParser.noun == "east") {
                    player.goEast();
                }
            } else if(commandParser.verb == "quit") {
                break;
            } else {
                Sys.println("Command not understand.");
            }
        }
    }
}
