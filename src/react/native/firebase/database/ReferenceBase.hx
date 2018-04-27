package react.native.firebase.database;

import haxe.extern.EitherType;
@:enum abstract EventType(String) {
	var Value = "value";
	var ChildAdded = "child_added";
	var ChildChanged = "child_changed";
	var ChildRemoved = "child_removed";
	var ChildMoved = "child_moved";
}

extern class ReferenceBase {
	/**
	 *  Returns a Reference to the Query's location.
	 */
	public var ref:Reference;

	/**
	 *  Detaches a callback previously attached with on().
	 *  @param eventType - One of the following strings: "value", "child_added", "child_changed", "child_removed", or "child_moved."
	 *  @param callback - The callback function that was passed to on().
	 *  @param context - The context that was passed to on().
	 */	
	public function off(?eventType:EventType, ?callback:DataSnapshot->String->Void, ?context:Dynamic):Void;
	
	/**
	 *  Listens for data changes at a particular location. Returns the callback.
	 *  @param eventType - One of the following strings: "value", "child_added", "child_changed", "child_removed", or "child_moved."
	 *  @param callback - A callback that fires when the specified event occurs. The callback will be passed a DataSnapshot. For ordering purposes, "child_added", "child_changed", and "child_moved" will also be passed a string containing the key of the previous child, by sort order, or null if it is the first child.
	 *  @param cancelCallbackOrContext - An Optional callback will be passed an Error object indicating why the failure occurred.
	 *  @param context - If provided, this object will be used as this when calling your callback(s).
	 *  @return DataSnapshot->String->Void;
	 */
	public function on(?eventType:EventType, callback:DataSnapshot->String->Void, ?cancelCallbackOrContext:Dynamic->Void, ?context:Dynamic):DataSnapshot->String->Void;

	/**
	 *  Listens for exactly one event of the specified event type, and then stops listening.
	 *  @param eventType - One of the following strings: "value", "child_added", "child_changed", "child_removed", or "child_moved."
	 *  @param callback - A callback that fires when the specified event occurs. The callback will be passed a DataSnapshot. For ordering purposes, "child_added", "child_changed", and "child_moved" will also be passed a string containing the key of the previous child, by sort order, or null if it is the first child.
	 *  @param cancelCallbackOrContext - An Optional callback will be passed an Error object indicating why the failure occurred.
	 *  @param context - If provided, this object will be used as this when calling your callback(s).
	 *  @return DataSnapshot->String->Void;
	 */	
	public function once(?eventType:EventType, callback:DataSnapshot->String->Void, ?cancelCallbackOrContext:Dynamic->Void, ?context:Dynamic):DataSnapshot->String->Void;

	/**
	 *  Creates a Query with the specified starting point.
	 *  @param value - The value to start at.
	 *  @param key - The child key to start at. This argument is only allowed if ordering by child, value, or priority.
	 *  @return Query
	 */
	public function startAt(value:String, key:String):Query;

	/**
	 *  Creates a Query with the specified ending point.
	 *  @param value - The value to end at.
	 *  @param key - The child key to end at. This argument is only allowed if ordering by child, value, or priority.
	 *  @return Query
	 */
	public function endAt(value:String, key:String):Query;
	/**
	 *  Generates a new Query object ordered by the specified child key.
	 *  @param value - A relative path to the location of child data.
	 *  @return Query
	 */
	public function orderByChild(path:String):Query;
	/**
	 * Generates a new Query object ordered by priority.
	 *  @return Query
	 */
	public function orderByPriority():Query;
	/**
	 *  Generates a new Query object ordered by value.
	 *  @param value - A relative path to the location of child data.
	 *  @return Query
	 */
	public function orderByValue(path:String):Query;
	/**
	 *  Generates a new Query object ordered by key.
	 *  @param value - A relative path to the location of child data.
	 *  @return Query
	 */
	public function orderByKey(path:String):Query;

	/**
	 *  Creates a Query with the specified ending point.
	 *  @param value - string or number or boolean or null 
	 *  @return Query
	 */
	public function equalTo(?value:Dynamic):Query;
	/**
	 *  Returns whether or not the current and provided queries represent the same location, have the same query parameters, and are from the same instance of firebase.app.App.
	 *  @param query - The query to compare against.
	 *  @return Bool
	 */
	public function isEqual(query:Query):Bool;
	/**
	 *  Generates a new Query limited to the first specific number of children.
	 *  @param limit - The maximum number of nodes to include in this query.
	 *  @return Query
	 */
	public function limitToFirst(limit:Int):Query;
	/**
	 *  Generates a new Query object limited to the last specific number of children.
	 *  @param limit - The maximum number of nodes to include in this query.
	 *  @return Query
	 */
	public function limitToLast(limit:Int):Query;

}