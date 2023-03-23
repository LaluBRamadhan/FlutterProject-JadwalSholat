import 'package:flutter/material.dart';
import 'home.dart';
class Login extends StatelessWidget {
  const Login({
    super.key,
    required this.email,
    required this.pass,
  });

  final TextEditingController email;
  final TextEditingController pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          padding: EdgeInsets.all(30),
          children: [
            TextField(
              controller: email,
              autocorrect: false,
              decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: pass,
              autocorrect: false,
              decoration: InputDecoration(
                labelText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (email.text == "rama" && pass.text == "128") {
                  print("Log in Succesfull...");
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
//                    title: Text("Alert"),
                      content: Text("Login Succesfull"),
                    ),
                  );
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
                } else {
                  print("Failed to Log in...");
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
//                   title: Text("Dialog"),
                      content: Text("Login Failed"),
                    ),
                  );
                }
              },
              child: Text("Log In"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
