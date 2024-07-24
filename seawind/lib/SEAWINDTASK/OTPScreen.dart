
// import 'package:firstfirebase/SEAWINDTASK/Countryscreen.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:pinput/pinput.dart';

// class OTPScreen extends StatefulWidget {
//   final String verificationId;

//   OTPScreen({required this.verificationId});

//   @override
//   _OTPScreenState createState() => _OTPScreenState();
// }

// class _OTPScreenState extends State<OTPScreen> {
//   final TextEditingController _otpController = TextEditingController();

//   Future<void> signInWithOTP(String smsCode) async {
//     try {
//       AuthCredential credential = PhoneAuthProvider.credential(
//         verificationId: widget.verificationId,
//         smsCode: smsCode,
//       );
//       await FirebaseAuth.instance.signInWithCredential(credential);

//       // Navigator.push(
//       //     context,
//       //     MaterialPageRoute(
//       //       builder: (context) => HomePage(),
//       //     ));
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         backgroundColor: Colors.pink,
//         content: Text("Wrong OTP"),
//         duration: Duration(seconds: 2),
//       ));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 243, 156, 185),
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(50.0),
//         child: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.pink,
//           // shape: RoundedRectangleBorder(
//           //   borderRadius: BorderRadius.vertical(
//           //     bottom: Radius.circular(50),
//           //   ),
//           // ),
//           toolbarHeight: 50.0,
//           title: Center(child: Text('OTP Verifiy')),
//         ),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 20,
//           ),
//           Center(
//             child: Container(
//               height: 170,
//               width: 170,
//               child: Image.network(
//                   "https://arkesel.com/wp-content/uploads/2023/12/otp-illustrations.png"),
//             ),
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           Pinput(
//             controller: _otpController,
//             keyboardType: TextInputType.number,
//             length: 6,
//             mainAxisAlignment: MainAxisAlignment.center,
//             onCompleted: (value) {
//               signInWithOTP(value);
//             },
//           ),
//           SizedBox(height: 20.0),
//           ElevatedButton(
//             onPressed: () => signInWithOTP(_otpController.text),
//             child: InkWell(
//               onTap:() {
//                 Navigator.push(context, MaterialPageRoute(builder: (contex) => CountryScreenEvent()));
//               },
//               child: Text('Verify OTP')),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatefulWidget {

  const OtpVerificationScreen({Key? key, required String verificationId,}) : super(key: key);
  
  get verificationId => null;

  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpController = TextEditingController();
  int _secondsRemaining = 30;
  Timer? _timer;
  bool _isResendEnabled = false;
  

   Future<void> signInWithOTP(String smsCode) async {
    try {
      AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId,
        smsCode: smsCode,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);

      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => HomePage(),
      //     ));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.pink,
        content: Text("Wrong OTP"),
        duration: Duration(seconds: 2),
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _secondsRemaining = 30;
    _isResendEnabled = false;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer?.cancel();
          _isResendEnabled = true;
        }
      });
    });
  }

  void _resendOTP() {
    // TODO: Implement resend OTP logic
    _startTimer(); // Restart timer after resending OTP
  }

  @override
  Widget build(BuildContext context) {
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
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('OTP Verification',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
              SizedBox(height: 30),
               Text(
                'We have to send you the verification code on your phonenumber',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32.0),
              Pinput(
                defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                controller: _otpController,
                keyboardType: TextInputType.number,
                length: 6,
                mainAxisAlignment: MainAxisAlignment.center,
                onCompleted: (value) {
                signInWithOTP(value);
              },
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Resend OTP in ${_secondsRemaining}s',
                    style: TextStyle(
                      color: _isResendEnabled ? Colors.blue : Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: _isResendEnabled ? _resendOTP : null,
                    child: const Text('Resend OTP'),
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  // TODO: Verify OTP
                },
                child: const Text('Verify'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
