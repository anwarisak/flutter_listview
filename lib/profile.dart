import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "username",
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.remove_red_eye),
                    hintText: "password",
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 55,
                  color: Colors.black,
                  onPressed: (() {}),
                  child: Text(
                    "login",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "forget password",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
