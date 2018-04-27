package react.native.firebase.messaging;

extern class Messaging {
	/**
	 *  Subscribes the device to a topic.
	 *  @param topic - The topic to listen for
	 */
	public function subscribeToTopic(topic:String):Void;
	/**
	 *  Unsubscribes the device to a topic.
	 *  @param topic - Which topic to unsubscribe from
	 */
	public function unsubscribeFromTopic(topic:String):Void;
	/**
	 *  When the application has been opened from a notification, getInitialNotification is called and the notification payload is returned. Use messaging#onMessage for notifications when the app is running.
	 */
	public function getInitialNotification():Promise<{}>;
	/**
	 *  Returns the devices FCM token. This token can be used in the Firebase console to send messages to directly.
	 *  @return Promise<String>
	 */
	public function getToken():Promise<String>;
	/**
	 *  Reset Instance ID and revokes all tokens.
	 *  @return Promise<Void>
	 */
	public function deleteInstanceId():Promise<Void>;
	/**
	 *  On the event a devices FCM token is refreshed by Google, the new token is returned in a callback listener.
	 *  @param listener - A listener function called when a new token is generated.
	 *  @return String->Void
	 */
	public function onTokenRefresh(listener:String->Void):String->Void;
	/**
	 *  On a new message, the payload object is passed to the listener callback. This method is only triggered when the app is running. Use messaging#getInitialNotification for notifications which cause the app to open.
	 *  @return Dynamic->Void
	 */
	public function onMessage():Dynamic->Void;
	#if ios
	/**
	 *  Requests app notification permissions in an Alert dialog.
	 */
	public function requestPermissions():Void;
	#end
	/**
	 *  Sets the badge number on the app icon.
	 *  @return Void
	 */
	public function setBadgeNumber(value:Int):Void;
	/**
	 *  Returns the current badge number on the app icon.
	 *  @return Void
	 */
	public function getBadgeNumber():Void;
}