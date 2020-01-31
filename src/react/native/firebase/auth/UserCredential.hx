package react.native.firebase.auth;

import react.native.firebase.auth.providers.AuthProvider;

typedef UserCredential = {
	@:optional var user:User;
	@:optional var credential:AuthProvider;
	@:optional var operationType:String;
	@:optional var additionalUserInfo:TAdditionalUserInfo;
}

typedef TAdditionalUserInfo = {
	@:optional var providerId:String;
	@:optional var profile:{};
	@:optional var username:String;
}

typedef User = {
	var displayName:String;
	var email:String;
	var emailVerified:String;
	var providerId:String;
	var refreshToken:String;
	var uid:String;
}
