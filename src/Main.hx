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
        var commandExecutor:CommandExecutor = new CommandExecutor(player);
        Sys.println("Welcome");
        player.showCurrentRoom();

        var nextMove = null;
        while (true) {
            nextMove = Sys.stdin().readLine();
            commandParser.parseCommand(nextMove);
            commandExecutor.execute(commandParser.verb, commandParser.noun);
            
            if (commandExecutor.status == 'exit') {
                break;
            } else if(commandExecutor.status == 'unknown command') {
                Sys.println("Command not understand.");
            }
        }
    }
}
