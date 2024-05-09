

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneCallURL extends StatefulWidget {
  const PhoneCallURL({super.key});

  @override
  State<PhoneCallURL> createState() => _PhoneCallURLState();
}

class _PhoneCallURLState extends State<PhoneCallURL> {

  TextEditingController _PhoneController = TextEditingController();

  Future<void> PhoneApp(String? Number) async
  {
    print(Number);
    Uri PhoneCall = Uri(scheme: "tel", path: Number);
    await launchUrl(PhoneCall);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Phone Number",
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              PhoneApp("6352980520");
            }, child: Text("Call")),
          ],
        ),
      ),
    );
  }
}