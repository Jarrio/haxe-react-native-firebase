# haxe-react-native-firebase

Externs for react-native firebase

Due to the updated firebase structure I couldn't figure out an alternative way to get this going so here's the updated usage:

1) Create a file in your project root called `firebase-component-imports.js`
2) In your .hxml add the line `--macro includeFile('firebase-component-imports.js')`
3) Then in this file you would add the imports manually as an example:
```javascript
import "@react-native-firebase/auth";
import "@react-native-firebase/firestore";
```
This will allow the `auth` and `firestore` modules to the project

---
Follow the following links to use this library:

1) <https://github.com/massiveinteractive/haxe-react>
2) <https://github.com/haxe-react/haxe-react-native>
3) <https://invertase.io/oss/react-native-firebase/>

---

Quick startup:
```haxe
Firebase.initializeApp({
    appId: "appId",
    messagingSenderId: "senderId",
    apiKey: "apiKey",
    databaseURL: "dbUrl",
    projectId: "projectId",
    storageBucket: "storageBucket"
  }).then((loaded) -> this.setState({loaded: true})); //update state if you want
```

Then just use as normal (haxe 4 function declaration, works fine with old style):

```haxe
Firebase.firestore().collection('foo').onSnapshot(
    (data) -> trace("response object" + data),
    (data) -> trace("error object" + data)
);
```
---

I wrote this up a fair little while ago so if there are issues, feel free to submit a PR
