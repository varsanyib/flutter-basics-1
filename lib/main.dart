import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: MyHome()),
  );
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mobilapp fejlesztés",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Dosis",
          ),
        ),
        centerTitle: true,
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.zero)),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      body: Center(
          //Szöveg beillesztése
          /* child: Text("Legyen szép napod! :)",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                letterSpacing: 2.5,
                fontFamily: "Dosis",
              ))*/

          //Hálózatról kép betöltése
          /*child: Image(image: NetworkImage("valamilyen url")),*/

          //Helyi állományból kép betöltése
          /*child: Image(
            image: AssetImage(
                "assets/astronaut_image.png")),*/

          //Ikongomb
          /*child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.warning,
                color: Colors.redAccent,
                size: 50,
              ))),*/

          //Szöveggomb (FlatButton -> TextButton)
          /*
          child: TextButton(
              onPressed: consoleteszt,
              child: Text(
                "katt ide",
                style: TextStyle(
                    backgroundColor: Colors.indigo,
                    color: Colors.greenAccent,
                    fontFamily: "Dosis",
                    fontSize: 35,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    decorationStyle: TextDecorationStyle.wavy),
              ))),*/

          //Olyan gomb, amely ikont és szöveget tartalmaz //https://docs.flutter.dev/release/breaking-changes/buttons
          child: ElevatedButton.icon(
        onPressed: consoleteszt,
        icon: const Icon(
          Icons.gpp_good_sharp,
          color: Colors.lightGreen,
        ),
        label: const Text("Teszt szöveg a gombon",
            style: TextStyle(color: Colors.lightGreen)),
      )),
      floatingActionButton: const FloatingActionButton(
        onPressed: consoleteszt,
        backgroundColor: Color.fromARGB(255, 14, 95, 17),
        child: Icon(Icons.ac_unit, color: Color.fromARGB(255, 236, 255, 90)),
      ),
    );
  }
}

void consoleteszt() {
  // ignore: avoid_print
  print(
      "Teszt üzenet a consoleteszt metódus meghívására, ${DateTime.now().toString()}-kor");
}
