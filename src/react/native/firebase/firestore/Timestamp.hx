package react.native.firebase.firestore;

extern class Timestamp {
	public var nanoseconds:Float;
	public var seconds:Float;
    /**
     * Creates a new timestamp
     * @param seconds The number of seconds of UTC time since Unix epoch 1970-01-01T00:00:00Z. Must be from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59Z inclusive.
     * @param nanoseconds The non-negative fractions of a second at nanosecond resolution. Negative second values with fractions must still have non-negative nanoseconds values that count forward in time. Must be from 0 to 999,999,999 inclusive.
     */
    public function new(seconds:Float, nanoseconds:Float);
	/**
	 * Returns true if this Timestamp is equal to the provided one.
	 * @param other The Timestamp to compare against.
	 * @return Bool true if this Timestamp is equal to the provided one.
	 */
	public function isEqual(other:Timestamp):Bool;
	/**
	 * Convert a Timestamp to a JavaScript Date object. This conversion causes a loss of precision since Date objects only support millisecond precision.
	 * @return Date JavaScript Date object representing the same point in time as this Timestamp, with millisecond precision.
	 */
	public function toDate():Date;
	/**
	 * Convert a timestamp to a numeric timestamp (in milliseconds since epoch). This operation causes a loss of precision.
	 * @return Float The point in time corresponding to this timestamp, represented as the number of milliseconds since Unix epoch 1970-01-01T00:00:00Z.
	 */
	public function toMillis():Float;
	/**
	 * Creates a new timestamp from the given date.
	 * @param date The date to initialize the Timestamp from.
	 */
	public static function fromDate(date:Date):Timestamp;
	/**
	 * Creates a new timestamp from the given number of milliseconds.
	 * @param milliseconds Number of milliseconds since Unix epoch 1970-01-01T00:00:00Z.
	 * @return Timestamp A new Timestamp representing the same point in time as the given number of milliseconds.
	 */
	public static function fromMillis(milliseconds:Int):Timestamp;
	/**
	 * Creates a new timestamp with the current date, with millisecond precision.
	 * @return Timestamp a new timestamp representing the current date.
	 */
	public static function now():Timestamp;
}