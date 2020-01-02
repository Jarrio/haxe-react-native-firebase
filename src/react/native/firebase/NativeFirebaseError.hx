package react.native.firebase;

import haxe.extern.EitherType;

typedef NativeFirebaseError = {
	var Error:Dynamic;

	/**
	 * Firebase error code, e.g. auth/invalid-email
	 */
	var code:String;

	/**
	 * Firebase error message
	 */
	var message:String;

	var name:String;
	var stack:String;

	/**
	 * The firebase module namespace that this error originated from, e.g. 'analytics'
	 */
	var namespace:String;

	/**
	 * The native sdks returned error message, different per platform
	 */
	var nativeErrorMessage:String;

	/**
	 * The native sdks returned error code, different per platform
	 */
	var nativeErrorCode:EitherType<String, Int>;
}
