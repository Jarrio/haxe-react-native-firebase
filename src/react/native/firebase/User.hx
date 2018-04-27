package react.native.firebase;

// import js.Promise;
import react.native.firebase.Promise;
import react.native.firebase.UserInfo;

extern class User extends UserInfo {
	/**
	 *  Returns true if the user's email address has been verified.
	 */
	public var emailVerified:Bool;
	/**
	 *  Returns true if the user is anonymous.
	 */
	public var isAnonymous:Bool;

	/**
	 *  Additional provider-specific information about the user.
	 */
	public var providerData:Null<UserInfo>;

	/**
	 *  Deletes and signs out the user.
	 *  @return Promise<Void>
	 */
	public function delete():Promise<Void>;
		
}