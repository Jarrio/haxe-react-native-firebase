package react.native.firebase.firestore;

/**
 * A DocumentReference refers to a document location in a Firestore database and can be used to write, read, or listen to the location. The document at the referenced location may or may not exist. A DocumentReference can also be used to create a CollectionReference to a subcollection.
 */
extern class DocumentReference {
	public var firestore:Firestore;
	/**
	 * The document's identifier within its collection.
	 */
	public var id:String;
	/**
	 * A string representing the path of the referenced document (relative to the root of the database).
	 */
	public var path:String;
	/**
	 * The Collection this DocumentReference belongs to.
	 */
	public var parent:CollectionReference;
	
    public function new();
}