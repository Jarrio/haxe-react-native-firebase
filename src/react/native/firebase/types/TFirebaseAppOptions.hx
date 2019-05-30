package react.native.firebase.types;

typedef TFirebaseAppOptions = {	
	var apiKey:String;
	var databaseURL:String;
	@:optional var storageBucket:String;
	@:optional 	var messagingSenderId:String;
	@:optional var projectId:String;

	@:optional var authDomain:String;	
	@:optional var clientId:String;	
	@:optional var appId:String;
	@:optional var persistance:Bool;
}
