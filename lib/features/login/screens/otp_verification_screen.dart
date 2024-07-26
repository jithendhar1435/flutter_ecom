import 'package:dealsdray_task/features/login/screens/register_screen.dart';
import 'package:dealsdray_task/features/login/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String number;
  const OtpVerificationScreen({
    super.key,
    required this.number,
  });

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  List<FocusNode> focuses = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];
  @override
  void initState() {
    super.initState();
    focuses[0].requestFocus();
  }

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
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              Image.asset(
                'assets/images/otp_logo.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'OTP Verification',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  'We have sent a unique OTP number to your mobile +91-${widget.number.isEmpty ? '1234567890' : widget.number}',
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Spacer(),
                  CustomTextField(
                    focusNode: focuses[0],
                    onChanged: (value) {
                      if (value.length == 1 && value.isNotEmpty) {
                        focuses[1].requestFocus();
                      }
                    },
                  ),
                  const Spacer(),
                  CustomTextField(
                    focusNode: focuses[1],
                    onChanged: (value) {
                      if (value.length == 1 && value.isNotEmpty) {
                        focuses[2].requestFocus();
                      }
                    },
                  ),
                  const Spacer(),
                  CustomTextField(
                    focusNode: focuses[2],
                    onChanged: (value) {
                      if (value.length == 1 && value.isNotEmpty) {
                        focuses[3].requestFocus();
                      }
                    },
                  ),
                  const Spacer(),
                  CustomTextField(
                    focusNode: focuses[3],
                    onChanged: (value) async {
                      if (value.length == 1 && value.isNotEmpty) {
                        FocusScope.of(context).unfocus();
                        await Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      }
                    },
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '01:57',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'SEND AGAIN',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
