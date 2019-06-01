package react.native.firebase.firestore;

extern class Transaction {
    private function new();
	/**
	 * Deletes the document referred to by the provided DocumentReference.
	 * @param document_reference A reference to the document to be deleted.
	 * @return Transaction This Transaction instance. Used for chaining method calls.
	 */
	public function delete(document_reference:DocumentReference):Transaction;

	/**
	 * Reads the document referenced by the provided DocumentReference.
	 * @param document_reference A reference to the document to be read.
	 * @return Promise<DocumentSnapshot> A DocumentSnapshot for the read data.
	 */
	public function get(document_reference:DocumentReference):Promise<DocumentSnapshot>;
	/**
	 * Writes to the document referred to by the provided DocumentReference. If the document does not exist yet, it will be created. If you pass SetOptions, the provided data can be merged into the existing document.
	 * @param document_reference A reference to the document to be set.
	 * @param data An object of the fields and values for the document.
	 * @param options An object to configure the set behavior.
	 * @return Transaction This Transaction instance. Used for chaining method calls.
	 */
	public function set<T:{}>(document_reference:DocumentReference, data:DocumentData<T>, ?options:SetOptions):Transaction;
	/**
	 * Updates fields in the document referred to by the provided DocumentReference. The update will fail if applied to a document that does not exist.
	 * @param document_reference A reference to the document to be updated.
	 * @param data An object containing the fields and values with which to update the document. Fields can contain dots to reference nested fields within the document.
	 * @return Transaction This Transaction instance. Used for chaining method calls.	
	 */
	public function update<T:{}>(document_reference:DocumentReference, data:UpdateData<T>):Transaction;

}