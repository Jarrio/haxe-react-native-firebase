package react.native.firebase.database;

import react.native.firebase.Promise;
import react.native.firebase.database.Query;
import react.native.firebase.database.DataSnapshot;
import react.native.firebase.database.ReferenceBase;
import react.native.firebase.database.types.TTransactionResponse;

extern class Reference extends ReferenceBase {
	/**
	 * The last part of the `References` Path.
	 */
	public var key:Null<String>;

	/**
	 * The parent location of a `Reference`.
	 */
	public var parent:Null<Reference>;

	/**
	 *  The root reference of the `Database`
	 */
	public var root:Reference;

	/**
	 *  Gets a Ref for the location at the specified relative path.
	 *  @param path - A relative path from this location to the desired child location.
	 *  @return Reference
	 */
	public function child(path:String):Reference;

	/**
	 *  Writes data to this Database location.
	 *  @param value - The value to be written (string, number, boolean, object, array, or null).
	 *  @param onComplete - Callback called when write to server is complete.
	 *  @return Reference
	 */
	public function set(?value:Dynamic, ?onComplete:Null<Dynamic>->Void):Promise<Void>;
	/**
	 *  Generates a new child location using a unique key and returns its Reference.
	 *  @param value - Optional value to be written at the generated location.
	 *  @param onComplete - Callback called when write to server is complete.
	 *  @return Reference
	 */
	public function push(?value:Dynamic, onComplete:Null<Dynamic>->Void):Reference;
	/**
	 *  Removes the data at this Database location.
	 *  @param onComplete - Callback called when write to server is complete.
	 *  @return Promise<Void>
	 */
	public function remove(onComplete:Null<Dynamic>->Void):Promise<Void>;
	/**
	 *  Atomically modifies the data at this location.
	 *  @param transactionUpdate - A developer-supplied function which will be passed the current data stored at this location (as a JavaScript object).
	 *  @param onComplete - A callback function that will be called when the transaction completes. The callback is passed three arguments: a possibly-null Error, a boolean indicating whether the transaction was committed, and a DataSnapshot indicating the final result. If the transaction failed abnormally, the first argument will be an Error object indicating the failure cause. If the transaction finished normally, but no data was committed because no data was returned from transactionUpdate, then second argument will be false. If the transaction completed and committed data to Firebase, the second argument will be true. Regardless, the third argument will be a DataSnapshot containing the resulting data in this location.
	 *  @param applyLocally - By default, events are raised each time the transaction update function runs. So if it is run multiple times, you may see intermediate states. You can set this to false to suppress these intermediate states and instead wait until the transaction has completed before events are raised.
	 *  @return Promise<TTransactionResponse>
	 */
	public function transaction<T>(transactionUpdate:T->T, ?onComplete:Dynamic->Bool->DataSnapshot->Void, ?applyLocally:Bool):Promise<TTransactionResponse>;

	/**
	 *  Writes multiple values to the Database at once, does not overwrite the path
	 *  @param values - TObject containing multiple values. Value must not be null.
	 *  @param onComplete - Callback called when write to server is complete.
	 */
	public function update(values:Dynamic, onComplete:Null<Dynamic>->Void):Void;

}
