# haxe-react-native-firebase

Externs for react-native firebase

Due to the updated firebase structure I couldn' figure out an alternative way to get this going so here's the updated usage:

1) Create a file in your project root called `firebase-component-imports.js`
2) In your .hxml add the line `--macro includeFile('firebase-component-imports.js')`
3) Then in this file you would add the imports manually as an example:
```javascript
import "@react-native-firebase/auth";
import "@react-native-firebase/firestore";
```
This will allow the `auth` and `firestore` modules to the project

----


This has worked amazingly for me, and works in any npm project. Just follow the web installation over the mobile setup

Known to be working:
- Google Authentication (I used the react-native google sign-in package to create the button)
- Real time database 
- Firestore 

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
