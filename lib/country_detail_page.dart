import 'package:flutter/material.dart';
import '../models/country.dart';


class CountryDetailPage extends StatelessWidget {
  final Country country;

  CountryDetailPage({required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.nom),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(country.drapeau, width: 200),
            SizedBox(height: 30),
            Text("Capitale : ${country.capitale}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Population : ${country.population}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Superficie : ${country.superficie}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Langue officielle : ${country.langue}", style: TextStyle(fontSize: 18),),
          ],
        ),
      ),
    );
  }
}
