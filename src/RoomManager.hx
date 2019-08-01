package ;

class RoomManager {

    private var rooms:Map<Int, Room>;

    public function new(roomDataLoader: RoomDataLoader) {
        this.rooms = new Map<Int, Room>();
        
        var rooms:Array<Room> = roomDataLoader.get();
        for(i in 0...rooms.length) {
            this.addRoom(rooms[i]);
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