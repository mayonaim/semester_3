import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(235, 255, 252, 242),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 64, 61, 57),
          title: Text("Latihan"),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  style: TextStyle(fontSize: 18.0),
                  decoration: InputDecoration(
                      hintText: "Username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      filled: true,
                      fillColor: Color.fromARGB(195, 255, 255, 255)),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      filled: true,
                      fillColor: Color.fromARGB(195, 255, 255, 255)),
                ),
                SizedBox(height: 45.0),
                ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: MaterialButton(
                      minWidth: 200,
                      onPressed: () {},
                      color: Color.fromARGB(255, 235, 94, 40),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                SizedBox(height: 30.0),
                Container(
                    width: 200,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return GiffyDialog.image(
                                    Image.asset(
                                      "images/waduh.jpeg",
                                      height: 200,
                                      fit: BoxFit.contain,
                                    ),
                                    title: Text(
                                      'Demo telah berakhir',
                                      textAlign: TextAlign.center,
                                    ),
                                    content: Text(
                                      'Silahkan daftar untuk mendapatkan fitur premium',
                                      textAlign: TextAlign.center,
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'CANCEL'),
                                        child: const Text('CANCEL'),
                                      ),
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 235, 94, 40),
                            ),
                            child: Text("Register"))))
              ],
            )));
  }
}
