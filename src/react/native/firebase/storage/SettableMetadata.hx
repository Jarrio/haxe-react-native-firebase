package react.native.firebase.storage;

import haxe.DynamicAccess;

/**
 * An interface representing all the metadata properties that can be set.
 */
typedef SettableMetadata = {
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
	 * This is used to indicate the media type (or MIME type) of the object. When uploading a file Firebase Cloud Storage for React Native will attempt to automatically detect this if contentType is not already set, if it fails to detect a media type it will default to application/octet-stream.
	 * For DATA_URL string formats uploaded via putString this will also be automatically extracted if available.
	 */
	var customMetadata:DynamicAccess<String>;
}
