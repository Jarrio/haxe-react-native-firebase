package react.native.firebase.firestore;

import haxe.Constraints.Function;

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
	
    private function new();
	/**
	 * Gets a CollectionReference instance that refers to the collection at the specified path.
	 * @param collection_path A slash-separated path to a collection.
	 * @return CollectionReference The CollectionReference instance.
	 */
	public function collection(collection_path:String):CollectionReference;
	/**
	 * Deletes the document referred to by this DocumentReference.
	 * @return Promise<Void> A Promise resolved once the document has been successfully deleted from the backend (Note that it won't resolve while you're offline).
	 */
	public function delete():Promise<Void>;
	/**
	 * Reads the document referred to by this DocumentReference.
	 * 
	 * Note: By default, get() attempts to provide up-to-date data when possible by waiting for data from the server, but it may return cached data or fail if you are offline and the server cannot be reached. This behavior can be altered via the GetOptions parameter.
	 * @param options An object to configure the get behavior.
	 * @return Promise<DocumentSnapshot> A Promise resolved with a DocumentSnapshot containing the current document contents.
	 */
	public function get(?options:GetOptions):Promise<DocumentSnapshot>;
	/**
	 * Returns true if this DocumentReference is equal to the provided one.
	 * @param other The DocumentReference to compare against.
	 * @return Bool true if this DocumentReference is equal to the provided one.
	 */
	public function isEqual(other:DocumentReference):Bool;
	/**
	 * Attaches a listener for DocumentSnapshot events. You may either pass individual onNext and onError callbacks or pass a single observer object with next and error callbacks.
	 * 
	 * NOTE: Although an onCompletion callback can be provided, it will never be called because the snapshot stream is never-ending.
	 * @param onNext A callback to be called every time a new DocumentSnapshot is available.
	 * @param onError A callback to be called if the listen fails or is cancelled. No further callbacks will occur.
	 * @param onCompletion 
	 * @return Function An unsubscribe function that can be called to cancel the snapshot listener.
	 */
	public function onSnapshot(onNext:QuerySnapshot->Void = null, onError: Dynamic->Void = null, onCompletion:Void->Void = null):Function;
	/**
	 * Writes to the document referred to by this DocumentReference. If the document does not yet exist, it will be created. If you pass SetOptions, the provided data can be merged into an existing document.
	 * @param data A map of the fields and values for the document.
	 * @return Promise<Void> An object to configure the set behavior.
	 */
	public function set(data:DocumentData, ?options:SetOptions):Promise<Void>;
	/**
	 * Updates fields in the document referred to by this DocumentReference. The update will fail if applied to a document that does not exist.
	 * @param data An object containing the fields and values with which to update the document. Fields can contain dots to reference nested fields within the document.
	 * @return Promise<Void> A Promise resolved once the data has been successfully written to the backend (Note that it won't resolve while you're offline).
	 */
	public function update(data:UpdateData):Promise<Void>;

}