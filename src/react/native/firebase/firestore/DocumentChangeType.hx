package react.native.firebase.firestore;

@:enum abstract DocumentChangeType(String) {
	var ADDED = "added";
	var MODIFIED = "modified";
	var REMOVED = "removed";
}