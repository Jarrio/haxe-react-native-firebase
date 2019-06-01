package react.native.firebase.firestore;

extern class QueryDocumentSnapshot extends DocumentSnapshot {
	override function data<T:{}>(?options:SnapshotOptions):Null<DocumentData<T>>;
}