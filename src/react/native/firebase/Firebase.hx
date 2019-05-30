package react.native.firebase;

import react.native.firebase.messaging.Messaging;
import react.native.firebase.auth.Auth;
import react.native.firebase.FirebaseApp;
import react.native.firebase.database.Database;
import react.native.firebase.types.TFirebaseAppOptions;

@:jsRequire('firebase')
extern class Firebase {
	public static var apps:Array<FirebaseApp>;
	public static function app(?name:String):FirebaseApp;	
	public static function setLogLevel(level:Dynamic):Void;
	public static function initializeApp(config:TFirebaseAppOptions, name:String = "[DEFAULT]"):FirebaseApp;		

	public static function auth(?app:FirebaseApp):Auth;
	public static function messaging(?app:FirebaseApp):Messaging;	
	public static function database(?app:FirebaseApp):Database;	


	// public static function database(?app:firebase.app.App):firebase.database.Database;
	// public static function auth(?app:firebase.app.App):firebase.auth.Auth;
	// public static function storage(?app:firebase.app.App):firebase.storage.Storage;
	// public static function messaging(?app:firebase.app.App):firebase.messaging.Messaging;	
}