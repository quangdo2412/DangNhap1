import 'package:flutter/material.dart';

void main() {
  
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sign in"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                        hintText: 'User Name',
                        hintStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
               RichText(
                textAlign: TextAlign.right,
                text: const TextSpan(
                   children: [
                       TextSpan(
                          text: "Forgot ", style: TextStyle(color: Color(0xffc4c4c4))),
                       TextSpan(
                         text: "Username / Password",
                       style: TextStyle(color: Color.fromARGB(255, 31, 209, 25)))
            ],
          ),
        ),
                ElevatedButton(
                  child: Text('Sign In'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        ),
                  onPressed: () {},
                ),

              RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            children: [
              TextSpan(
                  text: "Don't have an account ?", style: TextStyle(color: Color(0xffc4c4c4))),
              TextSpan(
                  text: "\n\nSIGN UP NOW",
                  style: TextStyle(color: Color(0xff59b747)))
            ],
          ),
              )
              ],
            )
            ),   
      )
      )
      );
      
}