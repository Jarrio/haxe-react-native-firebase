package react.native.firebase.firestore;

typedef Settings = {
    /**
     * An approximate cache size threshold for the on-disk data. If the cache grows beyond this size, Firestore will start removing data that hasn't been recently used. The size is not a guarantee that the cache will stay below that size, only that if the cache exceeds the given size, cleanup will be attempted.
	 * 
	 * The default value is 40 MB. The threshold must be set to at least 1 MB, and can be set to CACHE_SIZE_UNLIMITED to disable garbage collection.
     */
    @:optional var cacheSizeBytes:Int;
	/**
	 * Forces the SDK’s underlying network transport (WebChannel) to use long-polling. Each response from the backend will be closed immediately after the backend sends data (by default responses are kept open in case the backend has more data to send). This avoids incompatibility issues with certain proxies, antivirus software, etc. that incorrectly buffer traffic indefinitely. Use of this option will cause some performance degradation though.
	 */
	@:optional var experimentalForceLongPolling:Bool;
	/**
	 * The hostname to connect to.
	 */
	@:optional var host:String;
	/**
	 * Whether to use SSL when connecting.
	 */
	@:optional var ssl:Bool;
}