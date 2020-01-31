package react.native.firebase.auth;

import react.native.firebase.auth.providers.AuthProvider.Provider;

class RecaptchaVerifier extends ApplicationVerifier {
	public function new(container:String, ?params:{});

	/**
	 * Clears the reCAPTCHA widget from the page and destroys the current instance.
	 */
	public function clear():Void;

	/**
	 * Renders the reCAPTCHA widget on the page.
	 * @return Promise<Int> A Promise that resolves with the reCAPTCHA widget ID.
	 */
	public function render():Promise<Int>;

	/**
	 * Waits for the user to solve the reCAPTCHA and resolves with the reCAPTCHA token.
	 * @return Promise<String> A Promise for the reCAPTCHA token.
	 */
	public function verify():Promise<String>;
}
