package react.native.firebase.storage;

import haxe.extern.EitherType;

/**
 * Storage Task used for Uploading or Downloading files.
 */
extern class Task {
	/**
	 * Cancel the current Download or Upload task.
	 * @return Promise<Bool>
	 */
	public function cancel():Promise<Bool>;

	@:native('catch')
	public function api_catch(onRejected:NativeFirebaseError->Any):Promise<Any>;
	public function on(event:TaskEvent, nextOrObserver:Null<EitherType<TaskSnapshotObserver, (TaskSnapshot -> Void)>>, error:Null<NativeFirebaseError->Any>,
		complete:Void->Void):Promise<Any>;

	/**
	 * Pause the current Download or Upload task.
	 * @return Promise<Bool>
	 */
	public function pause():Promise<Bool>;

	/**
	 * Resume the current Download or Upload task.
	 * @return Promise<Bool>
	 */
	public function resume():Promise<Bool>;

	public function then(onFulfilled:Null<TaskSnapshot->Void>, onRejected:Null<NativeFirebaseError->Void>):Promise<Any>;
}

enum abstract TaskEvent(String) {
	var state_changed;
}

typedef TaskSnapshotObserver = {
	/**
	 * Called when the task errors.
	 */
	var error:NativeFirebaseError->Void;

	/**
	 * Called when the task state changes.
	 */
	var next:TaskSnapshot->Void;

	/**
	 * Called when the task has completed successfully.
	 */
	var complete:Void->Void;
}
