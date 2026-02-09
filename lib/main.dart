import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text("Simple Thanks")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            //crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              ElevatedButton(onPressed: btnpressed, child: Text("hello")),
              ElevatedButton(
                onPressed: _launchUrl,
                child: Text("Open Website"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void btnpressed() {
  if (kDebugMode) {
    print("Hello");
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
