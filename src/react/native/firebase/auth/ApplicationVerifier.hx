package react.native.firebase.auth;

import react.native.firebase.auth.providers.AuthProvider.Provider;

extern class ApplicationVerifier {
	/**
	 * The application verifier type. For a reCAPTCHA verifier, this is 'recaptcha'.
	 */
	public var type:String;

	/**
	 * Waits for the user to solve the reCAPTCHA and resolves with the reCAPTCHA token.
	 * @return Promise<String> A Promise for the reCAPTCHA token.
	 */
	public function verify():Promise<String>;
}
