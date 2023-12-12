import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _googleUrl = Uri.parse('https://www.google.com/');
final Uri _phoneCallUrl = Uri.parse('tel:+123456789');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.lime,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'URL Launcher',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  launchUrl(_googleUrl);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  fixedSize: Size.fromHeight(60),
                ),
                icon: Icon(Icons.open_in_browser),
                label: Text(
                  'Open Google',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  launchUrl(_phoneCallUrl);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  fixedSize: Size.fromHeight(60),
                ),
                icon: Icon(Icons.phone),
                label: Text(
                  'Make Phone Call',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
