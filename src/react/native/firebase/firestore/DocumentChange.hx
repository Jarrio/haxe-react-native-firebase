package react.native.firebase.firestore;

typedef DocumentChange = {
	/**
	 * The document affected by this change.
	 */
	var doc:QueryDocumentSnapshot;
	/**
	 * The index of the changed document in the result set immediately after this DocumentChange (i.e. supposing that all prior DocumentChange objects and the current DocumentChange object have been applied). Is -1 for 'removed' events.
	 */
	var newIndex:Int;
	/**
	 * The index of the changed document in the result set immediately prior to this DocumentChange (i.e. supposing that all prior DocumentChange objects have been applied). Is -1 for 'added' events.
	 */
	var oldIndex:Int;
	/**
	 * The type of change ('added', 'modified', or 'removed').
	 */
	var type:DocumentChangeType;
}

