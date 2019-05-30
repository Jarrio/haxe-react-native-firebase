package react.native.firebase;

import react.native.firebase.database.Database;
import react.native.firebase.auth.Auth;
import js.Promise;
import react.native.firebase.types.TFirebaseAppOptions;
import react.native.firebase.messaging.Messaging;
import react.native.firebase.firestore.Firestore;
@:jsRequire('react-native-firebase', 'FirebaseApp')
extern class FirebaseApp {

	public var name:String;
	public var options:TFirebaseAppOptions;
	public function onReady():Promise<FirebaseApp>;

	public function auth(?app:FirebaseApp):Auth;
	public function database(?app:FirebaseApp):Database;		
	public function messaging(?app:FirebaseApp):Messaging;	
	public function firestore(?app:FirebaseApp):Firestore;	
}