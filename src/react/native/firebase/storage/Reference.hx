package react.native.firebase.storage;

/**
 * Represents a reference to a Google Cloud Storage object in React Native Firebase.
 * A reference can be used to upload and download storage objects, get/set storage object metadata, retrieve storage object download urls and delete storage objects.
 */
extern class Reference {
	/**
	 * The name of the bucket containing this reference's object.
	 */
	public var bucket:String;

	/**
	 * The full path of this object.
	 */
	public var fullPath:String;

	/**
	 * The short name of this object, which is the last component of the full path.
	 * For example, if `fullPath` is 'full/path/image.png' name is: 'image.png'
	 */
	public var name:String;

	/**
	 * A reference pointing to the parent location of this reference, or null if this reference is the root.
	 */
	public var parent:Null<Reference>;

	/**
	 * A reference to the root of this reference's bucket
	 */
	public var root:Reference;

	/**
	 * The storage service associated with this reference
	 */
	public var storage:Storage;

	/**
	 * Returns a reference to a relative path from this reference.
	 * @param path The relative path from this reference. Leading, trailing, and consecutive slashes are removed.
	 * @return Reference
	 */
	public function child(path:String):Reference;

	/**
	 * Deletes the object at this reference's location.
	 * @return Promise<Void>
	 */
	public function delete():Promise<Void>;

	/**
	 * Fetches a long lived download URL for this object.
	 * @return Promise<Void>
	 */
	public function getDownloadURL():Promise<String>;

	/**
	 * Fetches metadata for the object at this location, if one exists.
	 * @return Promise<FullMetadata>
	 */
	public function getMetadata():Promise<FullMetadata>;

	/**
	 * List items (files) and prefixes (folders) under this storage reference.
	 * List API is only available for Firebase Rules Version 2.
	 *
	 * GCS is a key-blob store. Firebase Storage imposes the semantic of '/' delimited folder structure. Refer to GCS's List API if you want to learn more.
	 *
	 * To adhere to Firebase Rules's Semantics, Firebase Storage does not support objects whose paths end with "/" or contain two consecutive "/"s. Firebase Storage List API will filter these unsupported objects. list() may fail if there are too many unsupported objects in the bucket.
	 * @param options
	 * @return Promise<ListResult>
	 */
	public function list(options:Null<ListOptions>):Promise<ListResult>;

	/**
	 * List all items (files) and prefixes (folders) under this storage reference.
	 * This is a helper method for calling list() repeatedly until there are no more results. The default pagination size is 1000.
	 * Note: The results may not be consistent if objects are changed while this operation is running.
	 *
	 * Warning: listAll may potentially consume too many resources if there are too many results.
	 * @return Promise<ListResult>
	 */
	public function listAll():Promise<ListResult>;

	/**
	 * Puts data onto the storage bucket.
	 * @param data The data to upload to the storage bucket at the reference location.
	 * @param metadata
	 * @return Task
	 */
	public function put(data:DataType, ?metadata:Null<SettableMetadata>):Task;

	/**
	 * Puts a file from local disk onto the storage bucket.
	 * @param local_path The local file path to upload to the bucket at the reference location.
	 * @param metadata
	 * @return Task
	 */
	public function putFile(local_path:String, ?metadata:Null<SettableMetadata>):Task;

	/**
	 * Puts a string on the storage bucket. Depending on the string type, set a storage.StringFormat type.
	 * @param data The string data, must match the format provided.
	 * @param metadata
	 * @return Task
	 */
	public function putString(data:String, ?format:StorageFormatType, ?metadata:Null<SettableMetadata>):Task;

	/**
	 * Returns a gs:// URL for this object in the form gs://///.
	 */
	public function toString():String;

	/**
	 * Updates the metadata for this reference object on the storage bucket.
	 * @param metadata A `SettableMetadata` instance to update.
	 * @return Promise<FullMetadata>
	 */
	public function updateMetadata(metadata:Null<SettableMetadata>):Promise<FullMetadata>;

	/**
	 * Downloads a file to the specified local file path on the device.
	 * @param local_path Where to save the file
	 * @return Promise<FullMetadata>
	 */
	public function writeToFile(local_path:String):Task;
}

enum abstract StorageFormatType(String) {
	var raw;
	var base64;
	var base64url;
	var data_url;
}

enum abstract DataType(String) {
	var Blob;
	var Uint8Array;
	var ArrayBuffer;
}
