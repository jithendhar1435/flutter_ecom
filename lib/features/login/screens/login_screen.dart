import 'package:dealsdray_task/features/login/screens/otp_verification_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Icon(
                    //   Icons.arrow_back_ios,
                    //   color: Colors.black,
                    // ),
                    Image.asset(
                      'assets/images/login_logo.png',
                      height: 200,
                      width: 270,
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 45,
                  width: 250,
                  margin: const EdgeInsets.only(bottom: 40),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 0,
                      color: Colors.transparent,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 125,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 0,
                            color: Colors.transparent,
                          ),
                        ),
                        child: const Text(
                          'Phone',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 125,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 0,
                            color: Colors.transparent,
                          ),
                        ),
                        child: const Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                'Glad to see you!',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Please provide your phone number',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                child: TextField(
                  controller: phoneNoController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Phone',
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red.shade400,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.95,
                    60,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide.none,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          OtpVerificationScreen(number: phoneNoController.text),
                    ),
                  );
                },
                child: const Text(
                  'SEND CODE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
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
