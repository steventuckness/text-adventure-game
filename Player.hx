package ;

class Player {
    public var name: String;
    public var currentRoom: Room;

    public function goNorth(): Void {
        if (this.canGoNorth()) {
            this.currentRoom = this.currentRoom.north;
            this.showCurrentRoom();
        } else {
            this.noCanDo();
        }    
    }

     public function goSouth(): Void {
        if (this.canGoSouth()) {
            this.currentRoom = this.currentRoom.south;
            this.showCurrentRoom();

        }  else {
            this.noCanDo();
        } 
    }

     public function goEast(): Void {
        if (this.canGoEast()) {
            this.currentRoom = this.currentRoom.east;
            this.showCurrentRoom();
        } else {
            this.noCanDo();
        }    
    }

     public function goWest(): Void {
        if (this.canGoWest()) {
            this.currentRoom = this.currentRoom.west;
            this.showCurrentRoom();
        } else {
            this.noCanDo();
        }    
    }

    public function showCurrentRoom(): Void {
        Sys.println("You are in the '" + this.currentRoom.name +  "', " + this.currentRoom.description);
    }

    private function noCanDo(): Void {
        Sys.println("You cannot go this direction.");
    }

    private function canGoNorth(): Bool {
        return this.currentRoom.north != null;
    }

    private function canGoSouth(): Bool {
        return this.currentRoom.south != null;
    }

    private function canGoWest(): Bool {
        return this.currentRoom.west != null;
    }

    private function canGoEast(): Bool {
        return this.currentRoom.east != null;
    }

    public function new(name: String, currentRoom: Room) {
        this.name = name;
        this.currentRoom = currentRoom;
    }
}