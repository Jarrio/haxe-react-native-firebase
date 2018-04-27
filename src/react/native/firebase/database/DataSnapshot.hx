package react.native.firebase.database;

extern class DataSnapshot {
	/**
	 *  The key (last part of the path) of the location of this DataSnapshot.
	 */
	public var key:Null<String>;
	/**
	 *  The Reference for the location that generated this DataSnapshot.
	 */
	public var ref:Reference;

	/**
	 *  Gets another DataSnapshot for the location at the specified relative path.
	 *  @param path - A relative path to the location of child data.
	 *  @return DataSnapshot
	 */
	public function child(path:String):DataSnapshot;
	
	/**
	 *  Returns true if this DataSnapshot contains any data. 
	 *  @return Bool
	 */
	public function exists():Bool;
	
	/**
	 *  Enumerates the top-level children in the DataSnapshot.
	 *  @param action - A function that will be called for each child DataSnapshot. The callback can return true to cancel further enumeration.
	 *  @return Bool
	 */
	public function forEach(action:DataSnapshot->Bool):Bool;

	/**
	 *  Returns true if the specified child path has (non-null) data.
	 *  @param path - A relative path to the location of a potential child.
	 *  @return Bool
	 */
	public function hasChild(path:String):Bool;
	/**
	 *  Returns whether or not the DataSnapshot has any non-null child properties.
	 *  @return Bool
	 */
	public function hasChildren():Bool;
	/**
	 *  Returns the number of child properties of this DataSnapshot.
	 *  @return Int
	 */
	public function numChildren():Int;
	/**
	 *  Returns a JSON-serializable representation of this object.
	 *  @return Dynamic
	 */
	public function toJSON():Dynamic;
	/**
	 *  Extracts a JavaScript object from a DataSnapshot.
	 *  @return Dynamic
	 */
	public function val():Dynamic;
	



}