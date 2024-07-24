import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firstfirebase/SEAWINDTASK/Countryscreen.dart';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:seawind/SEAWINDTASK/OTPScreen.dart';


class PhoneNumberAuthPage extends StatefulWidget {
  final String verificationId;
   PhoneNumberAuthPage({required this.verificationId});

  @override
  State<PhoneNumberAuthPage> createState() => _PhoneNumberAuthPageState();
}

class _PhoneNumberAuthPageState extends State<PhoneNumberAuthPage> {

  String? phoneNumber;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _phonecontroller = TextEditingController();

  Future<void> verifyphonenumber(BuildContext context, String phoneNumber) async
  {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Automatically sign in the user after verification is done.
          await _auth.signInWithCredential(credential);
          // Navigate to home screen or next page
        },
        verificationFailed: (FirebaseAuthException e) {
          // Handle verification failed
        },
        codeSent: (String verificationId, int? resendToken) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OtpVerificationScreen(verificationId: verificationId),
              )
            );
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Handle code retrieval timeout
        },
      );
    } catch (e) {
      // Handle errors
    }
  }
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Color.fromARGB(255, 245, 184, 204),
              Colors.white,
              Color.fromARGB(255, 245, 184, 204),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 170,
              width: 170,
              child: Image.network(
                  "https://arkesel.com/wp-content/uploads/2023/12/otp-illustrations.png"),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: IntlPhoneField(
                controller: _phonecontroller,
                initialCountryCode: 'IN',
                showCountryFlag: true,
                showDropdownIcon: true,
                onChanged: (value) {
                  if (value.number.length == 10) {
                    phoneNumber = value.completeNumber;
                    verifyphonenumber(context, phoneNumber!);
                  }
                },
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  fillColor: Colors.white,
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () => verifyphonenumber(
                    context, phoneNumber!), // Replace with desired phone number
                child: Text('Send OTP'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





