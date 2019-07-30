package ;

private typedef Data = {
    var rooms:Array<DataRoom>;   
}

private typedef DataRoom = {
    var id: Int;
    var name: String;
    var description: String;
    var ?northRoomId: Int;
    var ?southRoomId: Int;
    var ?westRoomId: Int;
    var ?eastRoomId: Int;
}

class RoomDataLoader {    
    private var file: String;

    public function new(file:String) {
      this.file = file; 
    }

    // TODO: transform from here instead
    public function get(): Array<DataRoom> {
        var content:String = sys.io.File.getContent(this.file);
        var rooms:Data = haxe.Json.parse(content);
        return rooms.rooms;
    }
}