package react.native.firebase;

import js.Promise;
import react.native.firebase.auth.Auth;
import react.native.firebase.database.Database;
import react.native.firebase.firestore.Firestore;
import react.native.firebase.messaging.Messaging;
import react.native.firebase.storage.Storage;
import react.native.firebase.types.TFirebaseAppOptions;

// @:jsRequire('react-native-firebase', 'FirebaseApp')
extern class FirebaseApp {
	public var name:String;
	public var options:TFirebaseAppOptions;
	public function onReady():Promise<FirebaseApp>;

	public function auth(?app:FirebaseApp):Auth;
	public function database(?app:FirebaseApp):Database;
	public function messaging(?app:FirebaseApp):Messaging;
	public function firestore(?app:FirebaseApp):Firestore;
	#if !nodejs
	public function storage(?app:FirebaseApp):Storage;
	#end
}
