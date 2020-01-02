package react.native.firebase.storage;

/**
 * The Cloud Storage service is available for the default app, a given app or a specific storage bucket.
 */
#if reactnative
@:jsRequire('@react-native-firebase/app', 'firebase.storage()')
#end
#if !nodejs
extern class Storage {
	/**
	 * The current FirebaseApp instance for this Firebase service.
	 */
	public var app:FirebaseApp;

	/**
	 * Returns the current maximum time in milliseconds to retry a download if a failure occurs.
	 */
	public var maxDownloadRetryTime:Int;

	/**
	 * Returns the current maximum time in milliseconds to retry operations other than upload and download if a failure occurs.
	 */
	public var maxOperationRetryTime:Int;

	/**
	 * Returns the current maximum time in milliseconds to retry an upload if a failure occurs.
	 */
	public var maxUploadRetryTime:Int;

	/**
	 * An optional string pointing to a location on the storage bucket. If no path is provided, the returned reference will be the bucket root path.
	 * @param path
	 * @return Reference
	 */
	public function ref(path:String):Reference;

	/**
	 * Returns a storage bucket specified by a direct URL
	 * @param url must be either `gs://` or `http`
	 * @return Returns a new storage.Reference instance from a storage bucket URL.
	 */
	public function refFromURL(url:String):Reference;

	/**
	 * Sets the maximum time in milliseconds to retry a download if a failure occurs.
	 * @param time The new maximum download retry time in milliseconds.
	 * @return Promise<Void>
	 */
	public function setMaxDownloadRetryTime(time:Float):Promise<Void>;

	/**
	 * Sets the maximum time in milliseconds to retry operations other than upload and download if a failure occurs.
	 * @param time The new maximum download retry time in milliseconds.
	 * @return Promise<Void>
	 */
	public function setMaxOperationRetryTime(time:Float):Promise<Void>;

	/**
	 * Sets the maximum time in milliseconds to retry an upload if a failure occurs.
	 * @param time The new maximum download retry time in milliseconds.
	 * @return Promise<Void>
	 */
	public function setMaxUploadRetryTime(time:Float):Promise<Void>;
}
#end
