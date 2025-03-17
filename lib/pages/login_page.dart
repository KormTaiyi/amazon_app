import 'package:amazon_clone_application/pages/main_page.dart';
import 'package:amazon_clone_application/pages/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text(
              "Login to",
              style: TextStyle(fontSize: 32, color: Color(0xFF28462B)),
            ),
            Text(
              "Café Amazon",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w800,
                color: Color(0xFF28462B),
              ),
            ),
            Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.green, fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text(
                    "Register here",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.amber,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.amber,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Username",
              style: TextStyle(color: Color(0xFF28462B), fontSize: 22),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Please enter your mobile number",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Password",
              style: TextStyle(color: Color(0xFF28462B), fontSize: 22),
            ),
            TextField(
              obscureText: true,

              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility_off),
                hintText: "Please enter your mobile number",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Or login with",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.facebook_sharp, size: 50),
                ),
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.g_mobiledata, size: 60),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
