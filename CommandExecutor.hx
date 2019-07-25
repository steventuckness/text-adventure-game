package ;

class CommandExecutor {

    public var player:Player;
    public var status:String;

    public function new(player:Player) {
        this.player = player;
    }

    public function execute(verb:String, noun:String):Void {
        if (verb == "go") {
            if (noun == "north") {
                player.goNorth();
            } else if(noun == "south") {
                player.goSouth();
            } else if(noun == "west") {
                player.goWest();
            } else if(noun == "east") {
                player.goEast();
            }
            this.status = 'success';
        } else if(verb == "quit") {
            this.status = 'exit';
        } else {
            this.status = 'unknown command';        }
    }
}