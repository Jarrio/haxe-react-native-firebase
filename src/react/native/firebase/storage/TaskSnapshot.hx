package react.native.firebase.storage;

/**
 * A TaskSnapshot provides information about a storage tasks state.
 */
extern class TaskSnapshot {
	/**
	 * The number of bytes currently transferred.
	 */
	public var bytesTransferred:Int;

	/**
	 * If the storage.TaskSnapshot#state is error, returns a JavaScript error of the current task snapshot.
	 */
	public var error:NativeFirebaseError;

	/**
	 * The metadata of the tasks via a storage.FullMetadata interface.
	 */
	public var metadata:FullMetadata;

	/**
	 * The storage.Reference of the task.
	 */
	public var ref:Reference;

	/**
	 * The current state of the task snapshot.
	 */
	public var state:TaskState;

	/**
	 * The parent storage.Task of this snapshot.
	 */
	public var task:Task;

	/**
	 * The total amount of bytes for this task.
	 */
	public var totalBytes:Int;
}

enum abstract TaskState(String) from String to String {
	var cancelled;
	var error;
	var paused;
	var running;
	var success;
}
