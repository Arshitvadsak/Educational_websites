import 'package:educational_web_mirror_wall/screens/WikipediaPage.dart';
import 'package:educational_web_mirror_wall/screens/globals.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
     initialRoute: '/',
      routes: {
       // '/': (context) => const HomePage(),
        'web': (context) => const Wikipedia(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web App"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 20.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/image/wikipedia.webp'),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    child: const Text(
                      "wikipedia Web",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Global.currentWeb = Global.urls[0];
                      });
                      Navigator.of(context).pushNamed("web");
                    },
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 20.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/image/W3Schools.jpg'),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    child: const Text(
                      "W3Schools Web",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Global.currentWeb = Global.urls[1];
                      });
                      Navigator.of(context).pushNamed("web");
                    },
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 20.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/image/TutorialsPoint .png'),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    child: const Text(
                      "TutorialsPoint Web",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Global.currentWeb = Global.urls[2];
                      });
                      Navigator.of(context).pushNamed("web");
                    },
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 20.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/image/JavatPoint .png'),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    child: const Text(
                      "JavatPoint Web",
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Global.currentWeb =  Global.urls[3];
                      });
                      Navigator.of(context).pushNamed("web");
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
