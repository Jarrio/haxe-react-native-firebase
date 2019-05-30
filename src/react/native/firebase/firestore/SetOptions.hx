package react.native.firebase.firestore;

typedef SetOptions = {
	/**
	 * Changes the behavior of a set() call to only replace the values specified in its data argument. Fields omitted from the set() call remain untouched.
	 */
	@:optional var merge:Bool;
	/**
	 * Changes the behavior of set() calls to only replace the specified field paths. Any field path that is not specified is ignored and remains untouched.
	 */
	@:optional var mergeFields:String;
}