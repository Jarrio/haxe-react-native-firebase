package react.native.firebase.auth.providers;

import react.native.firebase.auth.AuthCredential;

class AuthProvider {
    public static var PROVIDER_ID:Provider;
	public static function credential(token:String, access:String):AuthCredential {
		return {
		    providerId: PROVIDER_ID,
    		secret: access,
    		token: token
		}
	}
}

@:enum abstract Provider(String) {
	var GOOGLE = 'google.com';
	var FACEBOOK = 'facebook.com';
}