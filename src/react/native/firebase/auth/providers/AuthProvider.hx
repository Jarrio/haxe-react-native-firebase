package react.native.firebase.auth.providers;

import react.native.firebase.auth.AuthCredential;

interface AuthProvider {
	public var providerId:Provider;
}

@:enum abstract Provider(String) to String {
	var GOOGLE = 'google.com';
	var FACEBOOK = 'facebook.com';
}
