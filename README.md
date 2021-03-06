## API isn't complete
Completed APIs:
1) Firebase
2) Firestore
3) FireStorage 
	- API is complete but not tested 
4) [WIP] Authentication

There are some api differences between react-native and web.

### Web

Follow the following link to use this library with node.js or web

1) <https://www.npmjs.com/package/firebase>
2) <https://firebase.google.com/docs/web/setup>

Quick start:
```haxe
app = Firebase.initializeApp({
	apiKey: "apiKey",
	databaseURL: "dbUrl",
	projectId: "projectId"
});
```
---

### React-Native
Follow the following links to use this library with react-native:

1) <https://github.com/massiveinteractive/haxe-react>
2) <https://github.com/haxe-react/haxe-react-native>
3) <https://invertase.io/oss/react-native-firebase/quick-start/existing-project>
---
Due to the updated firebase structure I couldn't figure out an alternative way to get this going so here's the updated usage:

1) In your .hxml add the line `--macro includeFile('firebase-component-imports.js')`
2) Create a file in your project root called `firebase-component-imports.js`
3) Then in this file you would add the imports manually as an example:
```javascript
import "@react-native-firebase/auth";
import "@react-native-firebase/firestore";
```
This will include the `auth` and `firestore` modules in the project. For other modules and setup instructions go to <https://invertase.io/oss/react-native-firebase/v6> and follow existing extern structure to integrate!

---

Quick start:
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

Then just use as normal:

```haxe
Firebase.firestore().collection('foo').onSnapshot(
    (data) -> trace("response object" + data),
    (data) -> trace("error object" + data)
);
```
---

I wrote this up a fair little while ago so if there are issues, feel free to submit a PR
