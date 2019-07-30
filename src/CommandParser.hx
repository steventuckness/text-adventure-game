package ;


import haxe.ds.Map;

class CommandParser {
    private var validVerbs:Map<String, String> = new Map<String, String>();
    private var validNouns:Map<String, String> = new Map<String, String>();
    
    public var verb:String;
    public var noun:String; 
    
    public function new() {
        this.validVerbs["go"] = "go";
        this.validVerbs["exit"] = "quit";
        this.validVerbs["close"] = "quit";
        this.validNouns["quit"] = "quit";

        this.validNouns["north"] = "north";
        this.validNouns["south"] = "south";
        this.validNouns["west"] = "west";
        this.validNouns["east"] = "east";
    }

    public function parseCommand(command:String):Void {
        var words:Array<String> = command.split(" ");
        var verb:String = "";
        var noun:String = "";

        if (words[0] != null) {
            verb = words[0];
        }

        if (words[1] != null) {
            noun = words[1];
        }

        if (validVerbs[verb] != null) {
            this.verb = validVerbs[verb];
        } else {
            // TODO:
        }
        
        // lookup
        if (validNouns[noun] != null) {
            this.noun = validNouns[noun];
        } else {
            // do something to indicate failure...
        }
    }
}