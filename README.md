# haxe-react-native-firebase
Externs for react-native firebase

This has worked amazingly for me, but I have not tested it on recent versions of rn-firebase. The last known version I tested it on was "3.1.0".

Known to be working:
- Google Authentication (I used the react-native google sign-in package to create the button)
- Real time database

Can't remember if working:
- Messaging

---
Follow the following links to use this library:

1) <https://github.com/massiveinteractive/haxe-react>
2) <https://github.com/haxe-react/haxe-react-native>
3) <https://rnfirebase.io/docs/v3.1.x/getting-started>

---

Quick startup:
```haxe
Firebase.app().onReady().then(
  function(fireapp) {
    this.fireapp = fireapp; //Save the response
  }
).catchError(
  function(error) {
    trace('Error: $error');
  }
);
```

Then just use as normal:

```haxe
this.fireapp.database().ref('table_name').once(
  EventType.Value,
  function (snapshot, str) {
    trace(snapshot.child('foo').val());
  },
  function (reject) {
    trace('error: $reject');
  }
);
```
---



I wrote this up a fair little while ago so if there are issues, feel free to submit a PR or an issue and when I have time I'll give it a test
