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

    public function get(): Array<Room> {
        var content:String = sys.io.File.getContent(this.file);
        var data:Data = haxe.Json.parse(content);
        var dataRooms:Array<DataRoom> = data.rooms;
        var rooms:Array<Room> = new Array<Room>();

        for(i in 0...dataRooms.length) {
            var room:Room = new Room(dataRooms[i].id, dataRooms[i].name, dataRooms[i].description);
            room.northRoomId = dataRooms[i].northRoomId;
            room.southRoomId = dataRooms[i].southRoomId;
            room.westRoomId = dataRooms[i].westRoomId;
            room.eastRoomId = dataRooms[i].eastRoomId;
            rooms.push(room);
        }

        return rooms;
    }
}