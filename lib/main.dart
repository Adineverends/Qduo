import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart'; 
import 'package:qduo/screens/Navigation_bar/Navigationbar.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 
     if (kIsWeb) {
    await Firebase.initializeApp
  (
        options: const FirebaseOptions(  
      apiKey: "AIzaSyDAV5tDD7ny_u0zwNFhPN5pNMHJExQaiz8",

  projectId: "qduo-a42a9",
  storageBucket: "qduo-a42a9.appspot.com",
  messagingSenderId: "301887725836",
  appId: "1:301887725836:web:1fb93a0264929eb798a929",
  
    ));
  } else {
    await Firebase.initializeApp();
  }


  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:ThemeData(
     // primarySwatch: Colors.blue
    ),
    home:Navigationbar() ,
  ));
}

  
