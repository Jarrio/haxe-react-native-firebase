package react.native.firebase.firestore;

/**
 * A QuerySnapshot contains zero or more DocumentSnapshot objects representing the results of a query. The documents can be accessed as an array via the docs property or enumerated using the forEach method. The number of documents can be determined via the empty and size properties.
 */
extern class QuerySnapshot {
    public function new();
	/**
	 * True if there are no documents in the QuerySnapshot
	 */
	public var empty:Bool;
	/**
	 * An array of all the dcocuments in the QuerySnapshot
	 */
	public var docs:Array<QueryDocumentSnapshot>;
	/**
	 * Metadata about this snapshot, concerning its source and if it has local modications
	 */
	public var metadata:SnapshotMetadata;
	/**
	 * The query on which you called `get` or `onSnapshot` in order to get this `QuerySnapshot`
	 */
	public var query:Query;
	/**
	 * The number of documents in the `Querysnapshot`
	 */
	public var size:Int;
	/**
	 * Returns an array of the documents changes since the last snapshot. If this is the first snapshot, all documents will be in the list as added changes.
	 * @param options SnapshotListenOptions that control whether metadata-only changes (i.e. only DocumentSnapshot.metadata changed) should trigger snapshot events.
	 * @return Array<DocumentChange>
	 */
	public function docChanges(?options:SnapshotListenOptions):Array<DocumentChange>;
	/**
	 * Enumerates all of the documents in the `QuerySnapshot`.
	 * @param callback A callback to be called with a QueryDocumentSnapshot for each document in the snapshot.
	 */
	public function forEach(callback:QueryDocumentSnapshot->Void):Void;
	/**
	 * Returns true if this QuerySnapshot is equal to the provided one.
	 * @param other The QuerySnapshot to compare against.
	 * @return Bool true if this QuerySnapshot is equal to the provided one.
	 */
	public function isEqual(other:QuerySnapshot):Bool;

	
}