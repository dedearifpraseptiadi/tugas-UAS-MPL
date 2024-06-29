import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "Wilayah Purwokerto",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    "27\u00B0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Cuaca Mendung",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.thermometerFull),
                      title: Text("Temperatur"),
                      trailing: Text("27\u00B0"),
                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.cloud),
                      title: Text("Kondisi Cuaca"),
                      trailing: Text("Mendung"),
                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.tint),
                      title: Text("Kelembapan"),
                      trailing: Text("80%"),
                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.wind),
                      title: Text("Kecepatan Angin"),
                      trailing: Text("10 km/h"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
