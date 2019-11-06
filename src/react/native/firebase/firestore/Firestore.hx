package react.native.firebase.firestore;

import react.native.firebase.FirebaseApp;
import react.native.firebase.firestore.CollectionReference;

// @:keep
// @:jsRequire('@react-native-firebase/firestore', 'default')
extern class Firestore {
	public var app:FirebaseApp;
    private function new();
	/**
	 * Creates a write batch, used for performing multiple writes as a single atomic operation. 
	 * The maximum number of writes allowed in a single WriteBatch is 500, but note that each usage of 
	 * FieldValue.serverTimestamp(), FieldValue.arrayUnion(), FieldValue.arrayRemove(), o
	 * r FieldValue.increment() inside a WriteBatch counts as an additional write.
	 * @return WriteBatch A WriteBatch that can be used to atomically execute multiple writes.
	 */
	public function batch():WriteBatch;
	/**
	 * Gets a CollectionReference instance that refers to the collection at the specified path.
	 * @param collection_path A slash-separated path to a collection.
	 * @return CollectionReference The CollectionReference instance.
	 */
	public function collection(collection_path:String):CollectionReference;
	/**
	 * Creates and returns a new Query that includes all documents in the database that are contained in a collection or subcollection with the given collectionId.
	 * @param collectionId Identifies the collections to query over. Every collection or subcollection with this ID as the last segment of its path will be included. Cannot contain a slash.
	 * @return Query The created Query.
	 */
	public function collectionGroup(collectionId:String):Query;
	/**
	 * Disables network usage for this instance. It can be re-enabled via enableNetwork(). While the network is disabled, any snapshot listeners or get() calls will return results from cache, and any write operations will be queued until the network is restored.
	 * @return Promise<Void> A promise that is resolved once the network has been disabled.0
	 */
	public function disableNetwork():Promise<Void>;
	/**
	 * Gets a DocumentReference instance that refers to the document at the specified path.
	 * @param document_path A slash-separated path to a document.
	 * @return DocumentReference The DocumentReference instance.
	 */
	public function doc(document_path:String):DocumentReference;
	/**
	 * Re-enables use of the network for this Firestore instance after a prior call to disableNetwork().
	 * @return Promise<Void> A promise that is resolved once the network has been enabled.
	 */
	public function enableNetwork():Promise<Void>;
	/**
	 * Attempts to enable persistent storage, if possible.

	 * Must be called before any other methods (other than settings()).
	 * 
	 * If this fails, enablePersistence() will reject the promise it returns. Note that even after this failure, the firestore instance will remain usable, however offline persistence will be disabled.
	 *
	 * There are several reasons why this can fail, which can be identified by the code on the error.
	 * failed-precondition: The app is already open in another browser tab.
	 * unimplemented: The browser is incompatible with the offline persistence implementation.
	 * 
	 * @param settings Optional settings object to configure persistence.
	 * @return Promise<Void> A promise that represents successfully enabling persistent storage.
	 */
	public function enablePersistence(?settings:PersistenceSettings):Promise<Void>;
	/**
	 * Executes the given updateFunction and then attempts to commit the changes applied within the transaction. If any document read within the transaction has changed, Cloud Firestore retries the updateFunction. If it fails to commit after 5 attempts, the transaction fails.
	 * 
	 * The maximum number of writes allowed in a single transaction is 500, but note that each usage of FieldValue.serverTimestamp(), FieldValue.arrayUnion(), FieldValue.arrayRemove(), or FieldValue.increment() inside a transaction counts as an additional write.
	 * @param updateFunction The function to execute within the transaction context.
	 * @return Promise<T> If the transaction completed successfully or was explicitly aborted (the updateFunction returned a failed promise), the promise returned by the updateFunction is returned here. Else, if the transaction failed, a rejected promise with the corresponding failure error will be returned.
	 */
	public function runTransaction<T>(updateFunction:Transaction->Void):Promise<T>;
	/**
	 * Specifies custom settings to be used to configure the Firestore instance. Must be set before invoking any other methods.
	 * @param settings The settings to use.
	 */
	public function settings(settings:Settings):Void;

}

typedef PersistenceSettings = {
	/**
	 * Whether to synchronize the in-memory state of multiple tabs. Setting this to 'true' in all open tabs enables shared access to local persistence, shared execution of queries and latency-compensated local document updates across all connected instances.
	 * To enable this mode, synchronizeTabs:true needs to be set globally in all active tabs. If omitted or set to 'false', enablePersistence() will fail in all but the first tab.
	 */
	@:optional var synchronizeTabs:Bool;
}