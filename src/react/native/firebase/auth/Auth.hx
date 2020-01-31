package react.native.firebase.auth;

import js.lib.Promise;
import react.native.firebase.auth.UserCredential;

#if reactnative
@:jsRequire('@react-native-firebase/auth', 'default')
#end
extern class Auth {
	public var Persistence:Persistence;

	/**
	 * The currently signed-in user (or null if no user signed in).
	 */
	public var currentUser:User;

	/**
	 * Changes the current type of persistence on the current Auth instance for the currently saved Auth session and applies this type of persistence for future sign-in requests, including sign-in with redirect requests. This will return a promise that will resolve once the state finishes copying from one type of storage to the other.
	 * Calling a sign-in method after changing persistence will wait for that persistence change to complete before applying it on the new Auth state.
	 * This makes it easy for a user signing in to specify whether their session should be remembered or not.
	 * It also makes it easier to never persist the Auth state for applications that are shared by other users or have sensitive data.
	 * The default for web browser apps and React Native apps is 'local' (provided the browser supports this mechanism) whereas it is 'none' for Node.js backend apps.
	 *
	 * @param persistence
	 * @return Promise<Void>
	 */
	public function setPersistence(persistence:Persistence):Promise<Void>;

	/**
	 *  Signs out the current user.
	 *  @return Promise<Void>
	 */
	public function signOut():Promise<Void>;

	/**
	 * Sends a sign-in email link to the user with the specified email.
	 * The sign-in operation has to always be completed in the app unlike other out of band email actions (password reset and email verifications). This is because, at the end of the flow, the user is expected to be signed in and their Auth state persisted within the app.
	 *
	 * To complete sign in with the email link, call firebase.auth.Auth.signInWithEmailLink with the email address and the email link supplied in the email sent to the user.
	 * @return Promise<Void>
	 */
	public function sendSignInLinkToEmail(email:String, actionCodeSettings:ActionCodeSettings):Promise<Void>;

	/**
	 * Asynchronously signs in using an email and sign-in email link. If no link is passed, the link is inferred from the current URL.
	 * Fails with an error if the email address is invalid or OTP in email link expires.
	 *
	 * Note: Confirm the link is a sign-in email link before calling this method firebase.auth.Auth.isSignInWithEmailLink.
	 * @param email The email account to sign in with.
	 * @param emailLink The optional link which contains the OTP needed to complete the sign in with email link. If not specified, the current URL is used instead.
	 * @return Promise<UserCredential>
	 */
	public function signInWithEmailLink(email:String, ?emailLink:{}):Promise<UserCredential>;

	/**
	 * Asynchronously signs in using a phone number. This method sends a code via SMS to the given phone number, and returns a firebase.auth.ConfirmationResult. After the user provides the code sent to their phone, call firebase.auth.ConfirmationResult.confirm with the code to sign the user in.
	 * For abuse prevention, this method also requires a firebase.auth.ApplicationVerifier. The Firebase Auth SDK includes a reCAPTCHA-based implementation, firebase.auth.RecaptchaVerifier.
	 * @param number
	 * @param applicationVerifier
	 * @return Promise<ConfirmationResult>
	 */
	public function signInWithPhoneNumber(number:String, ?applicationVerifier:ApplicationVerifier):Promise<ConfirmationResult>;

	/**
	 * Authenticates a Firebase client using a full-page redirect flow. To handle the results and errors for this operation, refer to firebase.auth.Auth.getRedirectResult.
	 * @param credential - A credential returned from a provider.
	 * @return Promise<User>
	 */
	public function signInWithRedirect(credential:AuthCredential):Promise<User>;

	/**
	 *  Asynchronously signs in with the given credentials.
	 *  @param credential - A credential returned from a provider.
	 *  @return Promise<User>
	 */
	public function signInWithCredential(credential:AuthCredential):Promise<User>;

	/**
	 * Checks if an incoming link is a sign-in with email link.
	 * @param emailLink
	 * @return Bool
	 */
	public function isSignInWithEmailLink(emailLink:String):Bool;

	public function signInAnonymously():Promise<User>;

	/**
	 *  Adds an observer for changes to the user's sign-in state.
	 *  @param listener - The callback should the state change
	 *  @return Dynamic->Void
	 */
	public function onAuthStateChanged(listener:User->Void):Dynamic->Void;

	public function getRedirectResult():Promise<UserCredential>;
}

/**
 * An enumeration of the possible persistence mechanism types.
 */
enum abstract Persistence(String) {
	/**
	 * Indicates that the state will only be stored in memory and will be cleared when the window or activity is refreshed.
	 */
	var none;

	/**
	 * Indicates that the state will be persisted even when the browser window is closed or the activity is destroyed in react-native.
	 */
	var local;

	#if !reactnative
	/**
	 * Indicates that the state will only persist in current session/tab, relevant to web only, and will be cleared when the tab is closed.
	 */
	var session;
	#end
}

/**
 * This is the interface that defines the required continue/state URL with optional Android and iOS bundle identifiers. The action code setting fields are:
 * url: Sets the link continue/state URL, which has different meanings in different contexts:
 *
 * When the link is handled in the web action widgets, this is the deep link in the continueUrl query parameter.
 * When the link is handled in the app directly, this is the continueUrl query parameter in the deep link of the Dynamic Link.
 * iOS: Sets the iOS bundle ID. This will try to open the link in an iOS app if it is installed.
 * android: Sets the Android package name. This will try to open the link in an android app if it is installed. If installApp is passed, it specifies whether to install the Android app if the device supports it and the app is not already installed. If this field is provided without a packageName, an error is thrown explaining that the packageName must be provided in conjunction with this field. If minimumVersion is specified, and an older version of the app is installed, the user is taken to the Play Store to upgrade the app.
 * handleCodeInApp: The default is false. When set to true, the action code link will be be sent as a Universal Link or Android App Link and will be opened by the app if installed. In the false case, the code will be sent to the web widget first and then on continue will redirect to the app if installed.
 */
typedef ActionCodeSettings = {
	@:optional var android:{
		@:optional var installApp:Bool;
		@:optional var minimumVersion:String;
	}
	@:optional var packageName:String;
	@:optional var dynamicLinkDomain:String;
	@:optional var handleCodeInApp:Bool;
	@:optional var iOS:{
		var bundled:String;
	}
	@:optional var url:String;
}

/**
 * A result from a phone number sign-in, link, or reauthenticate call.
 */
extern class ConfirmationResult {
	/**
	 * The phone number authentication operation's verification ID. This can be used along with the verification code to initialize a phone auth credential.
	 */
	var verificationId:String;

	/**
	 * Finishes a phone number sign-in, link, or reauthentication, given the code that was sent to the user's mobile device.
	 * @param verificationCode
	 * @return Promise<UserCredential>
	 */
	public function confirm(verificationCode:String):Promise<UserCredential>;
}
