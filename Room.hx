package ;

class Room {
    public var id: Int;
    public var description: String;
    public var north:Room;
    public var south:Room;
    public var west:Room;
    public var east:Room;

    public function new(id: Int, description: String) {
        this.id = id;
        this.description = description;
    } 
}