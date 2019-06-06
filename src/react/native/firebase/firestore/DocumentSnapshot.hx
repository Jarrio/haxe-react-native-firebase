package react.native.firebase.firestore;

/**
 * A DocumentSnapshot contains data read from a document in your Firestore database. The data can be extracted with .data() or .get(<field>) to get a specific field.
 *
 * For a DocumentSnapshot that points to a non-existing document, any data access will return 'undefined'. You can use the exists property to explicitly verify a document's existence.
 */
extern class DocumentSnapshot {
	/**
	 * Property of the DocumentSnapshot that provides the document's ID.
	 */
	public var id:String;
	/**
	 * Property of the DocumentSnapshot that signals whether or not the data exists. True if the document exists.
	 */
	public var exists:Bool;
	/**
	 * Metadata about the DocumentSnapshot, including information about its source and local modifications.
	 */
	public var metadata:SnapshotMetadata;
	/**
	 * The DocumentReference for the document included in the DocumentSnapshot.
	 */
	public var ref:DocumentReference;
	
	private function new();
	/**
	 * Retrieves all fields in the document as an Object. Returns 'undefined' if the document doesn't exist.
	 * 
	 * By default, FieldValue.serverTimestamp() values that have not yet been set to their final value will be returned as null. You can override this by passing an options object.
	 * @param options An options object to configure how data is retrieved from the snapshot (e.g. the desired behavior for server timestamps that have not yet been set to their final value).
	 * @return Null<DocumentData> An Object containing all fields in the document or 'undefined' if the document doesn't exist.
	 */
	public function data(?options:SnapshotOptions):Null<DocumentData>;
	/**
	 * Retrieves the field specified by fieldPath. Returns undefined if the document or field doesn't exist.
	 * 
	 * By default, a FieldValue.serverTimestamp() that has not yet been set to its final value will be returned as null. You can override this by passing an options object.
	 * @param field_path The path (e.g. 'foo' or 'foo.bar') to a specific field.
	 * @param options An options object to configure how the field is retrieved from the snapshot (e.g. the desired behavior for server timestamps that have not yet been set to their final value).
	 * @return T(Any) The data at the specified field location or undefined if no such field exists in the document.
	 */
	public function get(field_path:String, ?options:SnapshotOptions):DocumentData;
	/**
	 * Returns true if this DocumentSnapshot is equal to the provided one.
	 * @param other The DocumentSnapshot to compare against.
	 * @return Bool true if this DocumentSnapshot is equal to the provided one.
	 */
	public function isEqual(other:DocumentSnapshot):Bool;
}