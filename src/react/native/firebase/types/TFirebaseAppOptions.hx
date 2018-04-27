package react.native.firebase.types;

typedef TFirebaseAppOptions = {	
	var apiKey:String;
	var databaseURL:String;
	var storageBucket:String;
	var messagingSenderId:String;
	var projectId:String;

	@:optional var authDomain:String;	
	@:optional var clientId:String;	
	@:optional var appId:String;
	@:optional var persistance:Bool;
}
