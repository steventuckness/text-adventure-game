package ;

class Room {
    public var id: Int;
    public var name: String;
    public var description: String;
    public var north:Room;
    public var south:Room;
    public var west:Room;
    public var east:Room;

    public function new(id: Int, name: String, description: String) {
        this.id = id;
        this.name = name;
        this.description = description;
    }
}