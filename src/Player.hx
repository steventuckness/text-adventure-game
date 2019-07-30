package ;

class Player {
    public var name: String;
    public var currentRoom: Room;
    public var roomManager: RoomManager;

    public function goNorth(): Void {        
        if (this.canGoNorth()) {
            this.currentRoom = this.roomManager.getRoom(this.currentRoom.northRoomId);
            this.showCurrentRoom();
        } else {
            this.showCannotGo();
        }    
    }

     public function goSouth(): Void {
        if (this.canGoSouth()) {
            this.currentRoom = this.roomManager.getRoom(this.currentRoom.southRoomId);
            this.showCurrentRoom();
        }  else {
            this.showCannotGo();
        } 
    }

     public function goEast(): Void {
        if (this.canGoEast()) {
            this.currentRoom = this.roomManager.getRoom(this.currentRoom.eastRoomId);
            this.showCurrentRoom();
        } else {
            this.showCannotGo();
        }    
    }

     public function goWest(): Void {
        if (this.canGoWest()) {
            this.currentRoom = this.roomManager.getRoom(this.currentRoom.westRoomId);
            this.showCurrentRoom();
        } else {
            this.showCannotGo();
        }    
    }

    public function showCurrentRoom(): Void {
        Sys.println("You are in the '" + this.currentRoom.name +  "', " + this.currentRoom.description);
    }

    private function showCannotGo(): Void {
        Sys.println("You cannot go this direction.");
    }

    private function canGoNorth(): Bool {
        return this.currentRoom.northRoomId != null;
    }

    private function canGoSouth(): Bool {
        return this.currentRoom.southRoomId != null;
    }

    private function canGoWest(): Bool {
        return this.currentRoom.westRoomId != null;
    }

    private function canGoEast(): Bool {
        return this.currentRoom.eastRoomId != null;
    }

    public function new(name: String, currentRoom: Room, roomManager: RoomManager) {
        this.name = name;
        this.currentRoom = currentRoom;
        this.roomManager = roomManager;
    }
}