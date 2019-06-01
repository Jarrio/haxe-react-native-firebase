package react.native.firebase.firestore;

typedef SnapshotListenOptions = {
    /**
     * Include a change even if only the metadata of the query or of a document changed. Default is false.
     */
    @:optional var includeMetadataChanges:Bool;
}