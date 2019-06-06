package react.native.firebase.firestore;

extern class QueryDocumentSnapshot extends DocumentSnapshot {
	override function data(?options:SnapshotOptions):Null<DocumentData>;
}