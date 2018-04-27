package react.native.firebase;

extern class UserInfo {
	/**
	 *  The user's unique ID.
	 */
	public var uid:String;
	/**
	 *  The user's display name (if available).
	 */
	public var displayName:Null<String>;
	/**
	 *  The user's email address (if available).
	 */
	public var email:Null<String>;
	/**
	 *  The URL of the user's profile picture (if available).
	 */
	public var photoURL:Null<String>;
	/**
	 *  The user's E.164 formatted phone number (if available).
	 */
	public var phoneNumber:Null<String>;	
	/**
	 *  The authentication provider ID for the current user. For example, 'facebook.com', or 'google.com'.
	 */	
	public var providerId:String;
}