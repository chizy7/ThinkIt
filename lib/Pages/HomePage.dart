// general libraries
import 'package:flutter/material.dart';
import 'package:thinkit/Components/Navbar.dart';
import 'package:thinkit/Components/HomeIntro.dart';
import 'package:thinkit/Components/HomeBody.dart';
import 'package:thinkit/Components/Footer.dart';

//Firebase Database libraries
import 'package:firebase_database/firebase_database.dart';

class HomePage extends StatelessWidget {
  // FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference ref = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/thinkit_bg.png'),
                fit: BoxFit.cover)),

        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight,
        //         colors: [
        //       Colors.orange,
        //       Colors.yellow,
        //     ])),
        child: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                margin: const EdgeInsets.all(15.0),
                // padding: const EdgeInsets.all(15.0), this is redundant as its the over lay
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),

                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(15.0),
                    child: Navbar(),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(15.0),
                    //   padding:
                    //       EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),

                    child: HomeIntro(),
                  ),
                ]),
              ),
              Container(
                // margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Image.asset('assets/images/Thinker.png'),
                          ),
                          Expanded(
                            child: HomeBody(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 185, 185, 185),
                ),
              ),
              Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(15.0),
                      child: Footer())),
            ],
          ),
        ),
      ),
    );
  }
}
