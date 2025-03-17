import 'package:amazon_clone_application/pages/login_page.dart';
import 'package:amazon_clone_application/pages/main_page.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

List<String> options = ["Male", "Female"];

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String currentOption =
      options[0]; // Move this variable here to persist its value
  String selectedCountryCode = '+1'; // You can store the selected country code

  @override
  Widget build(BuildContext context) {
    final String signupImage = "assets/images/signup_logo.png";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF28462B),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(55)),
        leading: Padding(
          padding: const EdgeInsets.only(left: 28),
          child: TextButton(
            onPressed: () {},
            child: Icon(Icons.arrow_back_ios, size: 27, color: Colors.white),
          ),
        ),
        title: Text(
          "Create Account",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              height: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(signupImage),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mobile Number", style: TextStyle(fontSize: 16)),
                  Row(
                    children: [
                      Text(
                        "If you want to change please contact ",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                      Text(
                        "+855 976868568",
                        style: TextStyle(
                          color: Colors.amber,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: CountryCodePicker(
                        onChanged: (value) {
                          setState(() {
                            selectedCountryCode = value.toString();
                          });
                        },
                        initialSelection: selectedCountryCode,
                        showCountryOnly: false,
                        showFlag: true,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 13),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text("First Name", style: TextStyle(fontSize: 18)),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "SongHeng",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text("Last Name", style: TextStyle(fontSize: 18)),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Kov",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text("Email", style: TextStyle(fontSize: 18)),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "example@gmail.com",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text("Gender", style: TextStyle(fontSize: 18)),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            "Male",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          leading: Radio(
                            value: options[0],
                            groupValue: currentOption,
                            onChanged: (value) {
                              setState(() {
                                currentOption = value.toString();
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            "Female",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          leading: Radio(
                            value: options[1],
                            groupValue: currentOption,
                            onChanged: (value) {
                              setState(() {
                                currentOption = value.toString();
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("Password", style: TextStyle(fontSize: 18)),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Must be at least 8 characters",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                    obscureText: true,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text("Confirm Password", style: TextStyle(fontSize: 18)),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Must be at least 8 characters",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                    obscureText: true,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.amber,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
