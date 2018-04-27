package react.native.firebase.auth;


import react.native.firebase.User;
import react.native.firebase.Promise;

extern class Auth {

	/**
	 * The currently signed-in user (or null if no user signed in).
	 */
	public var currentUser:User;
	/**
	 *  Signs out the current user.
	 *  @return Promise<Void>
	 */
	public function signOut():Promise<Void>;

	/**
	 *  Asynchronously signs in with the given credentials.
	 *  @param credential - A credential returned from a provider.
	 *  @return Promise<User>
	 */
	public function signInWithCredential(credential:AuthCredential):Promise<User>;
	public function signInAnonymously():Promise<User>;

	/**
	 *  Adds an observer for changes to the user's sign-in state.
	 *  @param listener - The callback should the state change
	 *  @return Dynamic->Void
	 */
	public function onAuthStateChanged(listener:?User->Void):Dynamic->Void;	
}