package ;

class Room {
    public var id: Int;
    public var name: String;
    public var description: String;
    public var northRoomId:Int;
    public var southRoomId:Int;
    public var westRoomId:Int;
    public var eastRoomId:Int;

    public function new(
        id: Int, 
        name: String, 
        description: String,
        northRoomId: Int=null,
        southRoomId: Int=null,
        westRoomId: Int=null,
        eastRoomId: Int=null) {
        this.id = id;
        this.name = name;
        this.description = description;
    }
}