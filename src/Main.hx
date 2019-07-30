package ;

import Player;
import Room;

class Main {
    static public function main():Void {
        var roomLoader:RoomDataLoader = new RoomDataLoader("../level.json");
        var roomManager:RoomManager = new RoomManager(roomLoader);
        var player:Player = new Player("player", roomManager.getFirstRoom(), roomManager);
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
