package react.native.firebase;

extern class Thenable<T> {
	//public function catch(error:Dynamic):Thenable<Dynamic>;
	public function then(?onResolve:T -> Void, ?onReject:Dynamic -> Void):Promise<T>;
}