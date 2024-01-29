import 'package:ako_shop/src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyD74Nrm4oZD2pUEg6Ds80CC4Vz-K3tiJ28",
          authDomain: "akoishop.firebaseapp.com",
          projectId: "akoishop",
          storageBucket: "akoishop.appspot.com",
          messagingSenderId: "370643649955",
          appId: "1:370643649955:web:0435383c232cf2d5e30616",
          measurementId: "G-J6GY8BNP2B"
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

