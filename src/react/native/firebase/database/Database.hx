package react.native.firebase.database;

import react.native.firebase.database.Reference;

extern class Database {
	public function goOnline():Void;
	public function goOffline():Void;		
	public function getServerTime():Date;

	/**
	 *  Returns a reference representing the location in the Database Corresponding to the path provided.
	 *  @param path - If no path is provided it returns the root of the database.
	 *  @return Reference
	 */
	public function ref(?path:String):Reference;	
}