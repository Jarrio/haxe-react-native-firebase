package react.native.firebase.firestore;

/**
 * A CollectionReference object can be used for adding documents, getting document references, and querying for documents (using the methods inherited from Query).
 */
extern class CollectionReference extends Query {
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
	/**
	 * Add a new document to this collection with the specified data, assigning it a document ID automatically.
	 * @param data An Object containing the data for the new document.
	 * @return Promise<DocumentReference> A Promise resolved with a DocumentReference pointing to the newly created document after it has been written to the backend.
	 */
	public function add(data:DocumentData):Promise<DocumentReference>;
	/**
	 * Get a DocumentReference for the document within the collection at the specified path. If no path is specified, an automatically-generated unique ID will be used for the returned DocumentReference.
	 * @param document_path A slash-separated path to a document.
	 * @return DocumentReference The DocumentReference instance.
	 */
	public function doc(?document_path:String):DocumentReference;
}