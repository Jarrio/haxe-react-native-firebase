package react.native.firebase.auth.providers;

import react.native.firebase.auth.providers.AuthProvider;
import react.native.firebase.auth.providers.AuthProvider.Provider;

class FacebookAuthProvider extends AuthProvider {
	public static override function credential(?idToken:String, ?accessToken:String):AuthCredential {		
		return {
			providerId: Provider.FACEBOOK,
			secret: accessToken,
			token: idToken
		}
	}
}