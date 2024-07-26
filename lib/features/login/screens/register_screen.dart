import 'package:dealsdray_task/features/dashboard/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
            Center(
              child: Image.asset(
                'assets/images/login_logo.png',
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Let\'s Begin',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 26,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Please enter your credentials to proceed',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Your Email',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Create Password',
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Referral Code (Optional)',
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DashBoardScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    margin: const EdgeInsets.only(
                      right: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        width: 0,
                        color: Colors.transparent,
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
