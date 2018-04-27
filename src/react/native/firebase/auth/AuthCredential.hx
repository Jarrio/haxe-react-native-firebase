package react.native.firebase.auth;

import react.native.firebase.auth.providers.AuthProvider.Provider;
typedef AuthCredential = {
    public var token:String;
    public var secret:String;
    public var providerId:Provider;
}

