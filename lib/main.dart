import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thinkit/Pages/HomePage.dart';
import 'package:thinkit/firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(thinkit());
}

class thinkit extends StatefulWidget {
  @override
  State<thinkit> createState() => _thinkitState();
}

class _thinkitState extends State<thinkit> {
  late Future<FirebaseApp> _initialization;

  @override
  void initState() {
    super.initState();
    _initialization = Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Think It!',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return HomePage(
                //title: 'Flutter Demo',
                );
          } else if (snapshot.hasError) {
            print("Error");
            return Text("there is an issue");
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
