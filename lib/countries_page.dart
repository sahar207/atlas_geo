import 'package:flutter/material.dart';
import 'data/countries_data.dart';
import 'models/country.dart';
import 'country_detail_page.dart';
import 'welcome_page.dart';


class CountriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des Pays"),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Icon(Icons.public, size: 80, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Accueil"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => WelcomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("À propos"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Quitter"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          final c = countries[index];
          return ListTile(
            leading: Image.asset(c.drapeau, width: 50),
            title: Text(c.nom),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CountryDetailPage(country: c),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
