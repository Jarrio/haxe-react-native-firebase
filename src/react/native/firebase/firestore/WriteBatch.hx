package react.native.firebase.firestore;

/**
 * A write batch, used to perform multiple writes as a single atomic unit.
 * A WriteBatch object can be acquired by calling Firestore.batch(). It provides methods for adding writes to the write batch. 
 * None of the writes will be committed (or visible locally) until WriteBatch.commit() is called.
 * Unlike transactions, write batches are persisted offline and therefore are preferable when you don't need to condition your writes on read data.
 */
extern class WriteBatch {
    public function new();
	/**
	 * Commits all of the writes in this write batch as a single atomic unit.
	 * @return Promise<Void>
	 */
	public function commit():Promise<Void>;
	/**
	 * Deletes the document referred to by the provided DocumentReference.
	 * @return Promise<Void>
	 */
	public function delete(document_reference:DocumentReference):WriteBatch;
	/**
	 * Writes to the document referred to by the provided DocumentReference. If the document does not exist yet, it will be created. If you pass SetOptions, the provided data can be merged into the existing document.
	 * @param document_reference A reference to the document to be set.
	 * @param data An object of the fields and values for the document.
	 * @param options An object to configure the set behavior.
	 * @return WriteBatch This WriteBatch instance. Used for chaining method calls.
	 */
	public function set<T:{}>(document_reference:DocumentReference, data:DocumentData<T>, ?options:SetOptions):WriteBatch;
	/**
	 * Updates fields in the document referred to by the provided DocumentReference. The update will fail if applied to a document that does not exist.
	 * @param document_reference A reference to the document to be updated.
	 * @param data An object containing the fields and values with which to update the document. Fields can contain dots to reference nested fields within the document.
	 * @return WriteBatch This WriteBatch instance. Used for chaining method calls.
	 */
	// @:overload(function(document_reference:DocumentReference, field_path:String, value:Any))
	public function update<T:{}>(document_reference:DocumentReference, data:UpdateData<T>):WriteBatch;

}