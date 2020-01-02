package react.native.firebase.storage;

import haxe.DynamicAccess;

typedef FullMetadata = {
	/**
	 * The bucket this storage object is contained in.
	 */
	var bucket:String;

	/**
	 * The 'Cache-Control' HTTP header that will be set on the storage object when it's requested.
	 */
	var cacheControl:String;

	/**
	 * The 'Content-Disposition' HTTP header that will be set on the storage object when it's requested.
	 */
	var contentDisposition:String;

	/**
	 * The 'Content-Encoding' HTTP header that will be used on the storage object when it's requested.
	 */
	var contentEncoding:String;

	/**
	 * The 'Content-Language' HTTP header that will be set on the storage object when it's requested.
	 */
	var contentLanguage:String;

	/**
	 * The 'Content-Type' HTTP header that will be set on the object when it's requested.
	 *
	 * This is used to indicate the media type (or MIME type) of the object. When uploading a file Firebase Cloud Storage for React Native will attempt to automatically detect this if contentType is not already set, if it fails to detect a media type it will default to application/octet-stream.
	 * For DATA_URL string formats uploaded via putString this will also be automatically extracted if available.
	 */
	var contentType:String;

	/**
	 * Additional user-defined custom metadata for this storage object.
	 * String values only are supported for custom metadata property values.
	 */
	var customMetadata:DynamicAccess<String>;

	/**
	 * The full path to this storage object in its bucket.
	 */
	var fullPath:String;

	/**
	 * Storage object generation values enable users to uniquely identify data resources, e.g. object versioning.
	 */
	var generation:String;

	/**
	 * A Base64-encoded MD5 hash of the storage object being uploaded.
	 */
	var md5Hash:String;

	/**
	 * Storage object metageneration values enable users to uniquely identify data resources, e.g. object versioning.
	 */
	var metageneration:String;

	/**
	 * The short name of storage object in its bucket, e.g. it's file name.
	 */
	var name:String;

	/**
	 * The size of this storage object in bytes.
	 */
	var size:Float;

	/**
	 * A date string representing when this storage object was created.
	 */
	var timeCreated:String;

	/**
	 * A date string representing when this storage object was last updated.
	 */
	var updated:String;
}
