package react.native.firebase.firestore;

/**
 * Options that configure how data is retrieved from a DocumentSnapshot (e.g. the desired behavior for server timestamps that have not yet been set to their final value).
 */
extern class SnapshotOptions {
	/**
	 * If set, controls the return value for server timestamps that have not yet been set to their final value.
	 */
	public var serverTimestamps:SnapshotOptionsValue;
}

@:enum abstract SnapshotOptionsValue(String) {
	/**
	 * pending server timestamps return an estimate based on the local clock. This estimate will differ from the final value and cause these values to change once the server result becomes available.
	 */
	var ESTIMATE = "estimate";
	/**
	 * pending timestamps will be ignored and return their previous value instead.
	 */
	var PREVIOUS = "previous";
	/**
	 * If omitted or set to 'none', null will be returned by default until the server value becomes available.
	 */
	var NONE = "none";
}