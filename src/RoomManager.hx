package ;

class RoomManager {

    private var rooms:Map<Int, Room>;

    public function new(roomDataLoader: RoomDataLoader) {
        this.rooms = new Map<Int, Room>();
        
        // TODO: fix type issue
        var dataRooms = roomDataLoader.get();
        for(i in 0...dataRooms.length) {
            var room:Room = new Room(dataRooms[i].id, dataRooms[i].name, dataRooms[i].description);
            room.northRoomId = dataRooms[i].northRoomId;
            room.southRoomId = dataRooms[i].southRoomId;
            room.westRoomId = dataRooms[i].westRoomId;
            room.eastRoomId = dataRooms[i].eastRoomId;
            this.addRoom(room);
        }
    }

    public function addRoom(room: Room): Void {
        this.rooms[room.id] = room;
    }

    public function getRoom(id:Int): Room {
        return this.rooms[id];
    }

    public function getFirstRoom(): Room {
        return this.rooms[0];
    }
}