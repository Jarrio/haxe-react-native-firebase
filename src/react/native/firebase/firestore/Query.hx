package react.native.firebase.firestore;
import haxe.extern.EitherType;
import haxe.Constraints.Function;
/**
 * A Query refers to a Query which you can read or listen to. You can also construct refined Query objects by adding filters and ordering.
 */
extern class Query {
	/**
	 * The Firestore for the Firestore database (useful for performing transactions, etc.).
	 */
	public var firestore:Firestore;

    public function new();
	/**
	 * Creates and returns a new Query that ends at the provided document (inclusive). The end position is relative to the order of the query. The document must contain all of the fields provided in the orderBy of this query.
	 * @param snapshot The snapshot of the document to end at.
	 * @return Query The created Query.
	 */
	public function endAt(value:EitherType<String, DocumentSnapshot>):Query;
	/**
	 * Creates and returns a new Query that ends before the provided document (exclusive). The end position is relative to the order of the query. The document must contain all of the fields provided in the orderBy of this query.
	 * @param snapshot The snapshot of the document to end before.
	 * @return Query The created Query.
	 */
	public function endBefore(value:EitherType<String, DocumentSnapshot>):Query;
	/**
	 * Executes the query and returns the results as a QuerySnapshot.
	 * 
	 * Note: By default, get() attempts to provide up-to-date data when possible by waiting for data from the server, but it may return cached data or fail if you are offline and the server cannot be reached. This behavior can be altered via the GetOptions parameter.
	 * @param options An object to configure the get behavior.
	 * @return Promise<QuerySnapshot> A Promise that will be resolved with the results of the Query.
	 */
	public function get(?options:GetOptions):Promise<QuerySnapshot>;
	/**
	 * Returns true if this Query is equal to the provided one.
	 * @param other The Query to compare against.
	 * @return Bool true if this Query is equal to the provided one.
	 */
	public function isEqual(other:Query):Bool;
	/**
	 * Creates and returns a new Query where the results are limited to the specified number of documents.
	 * @param value The maximum number of items to return.
	 * @return Query The created Query.
	 */
	public function limit(value:Int):Query;
	/**
	 * Attaches a listener for QuerySnapshot events. You may either pass individual onNext and onError callbacks or pass a single observer object with next and error callbacks. The listener can be cancelled by calling the function that is returned when onSnapshot is called.
     * NOTE: Although an onCompletion callback can be provided, it will never be called because the snapshot stream is never-ending.
	 * @param onNext A callback to be called every time a new QuerySnapshot is available.
	 * @param onError A callback to be called if the listen fails or is cancelled. No further callbacks will occur.
	 * @param onCompletion 
	 * @return Function - An unsubscribe function that can be called to cancel the snapshot listener.
	 */
	public function onSnapshot(onNext:QuerySnapshot->Void = null, onError: Dynamic->Void = null, onCompletion:Void->Void = null):Function;
	/**
	 * Creates and returns a new Query that's additionally sorted by the specified field, optionally in descending order instead of ascending.
	 * @param field_path The field to sort by.
	 * @param direction Optional direction to sort by (asc or desc). If not specified, order will be ascending.
	 * @return Query The created Query.
	 */
	public function orderBy(field_path:String, ?direction:SortMethod):Query;
	/**
	 * Creates and returns a new Query that starts after the provided document (exclusive). The starting position is relative to the order of the query. The document must contain all of the fields provided in the orderBy of this query.
	 * @param value The snapshot of the document to start after.
	 * @return Query The created Query.
	 */
	public function startAfter(value:EitherType<String, DocumentSnapshot>):Query;
	/**
	 * Creates and returns a new Query that starts at the provided document (inclusive). The starting position is relative to the order of the query. The document must contain all of the fields provided in the orderBy of this query.
	 * @param value The snapshot of the document to start at.
	 * @return Query The created Query.
	 */
	public function startAt(value:EitherType<String, DocumentSnapshot>):Query;
	/**
	 * Creates and returns a new Query with the additional filter that documents must contain the specified field and the value should satisfy the relation constraint provided.
	 * @param field_path The path to compare
	 * @param filter_operation The operation string (e.g "<", "<=", "==", ">", ">=").
	 * @param value The value for comparison
	 * @return Query The created Query.
	 */
	public function where(field_path:String, filter_operation:WhereFilterOp, value:Any):Query;
}

@:enum abstract SortMethod(String) {
	var ASCENDING = "asc";
	var DESCENDING = "dec";
}

/**
 * Filter conditions in a Query.where() clause are specified using the strings '<', '<=', '==', '>=', '>', and 'array-contains'.
 */
@:enum abstract WhereFilterOp(String) from String {
	var LESS = "<";
	var LESS_EQUALS = "<=";
	var GREATER = ">";
	var GREATER_EQUALS = ">=";
	var EQUAL_TO = "==";
	var ARRAY_CONTAINS = "array-contains";
}