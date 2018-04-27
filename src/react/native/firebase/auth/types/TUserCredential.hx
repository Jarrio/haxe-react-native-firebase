package react.native.firebase.auth.types;

import react.native.firebase.auth.User;
import react.native.firebase.auth.providers.AuthProvider;

typedef TUserCredential = {
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