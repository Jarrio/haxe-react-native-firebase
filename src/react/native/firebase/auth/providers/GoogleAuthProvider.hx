package react.native.firebase.auth.providers;

import react.native.firebase.auth.providers.AuthProvider.Provider;
import react.native.firebase.auth.providers.AuthProvider;


extern class GoogleAuthProvider implements AuthProvider {
	public var providerId:Provider;
	public static var PROVIDER_ID:String;
	public static var GOOGLE_SIGN_IN_METHOD:String;

	public function new();

	/**
	 * The provider instance itself.
	 * @param scope Google OAuth scope
	 * @return AuthProvider
	 */
	public function addScope(scope:String):AuthProvider;

	public function setCustomParameters(custom_oauth_parameters:OAuthParamaters):AuthProvider;

	public static function credential(?idToken:String, ?accessToken:String):AuthCredential;
}

typedef OAuthParamaters = {
	/**
	 * The OAuth access token used to initialize the OAuthCredential.
	 */
	@:optional var accessToken:String;

	/**
	 * The OAuth ID token used to initialize the OAuthCredential.
	 */
	@:optional var idToken:String;

	/**
	 * The raw nonce associated with the ID token. It is required when an ID token with a nonce field is provided. The SHA-256 hash of the raw nonce must match the nonce field in the ID token.
	 */
	@:optional var rawNonce:String;
}
