import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  Widget textfield(
      {required String text, required IconData icon, IconData? icon1}) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: text,
        suffixIcon: Icon(icon1),
        hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        enabledBorder: UnderlineInputBorder(),
      ),
    );
  }

  Widget textbutton({required String message, required Color color}) {
    return TextButton(
      style: TextButton.styleFrom(
          fixedSize: Size(250, 50),
          backgroundColor: Colors.blueAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: () {},
      child: Text(
        message,
        style: TextStyle(color: color, fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "images/pills.png",
                  width: 80,
                  height: 80,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  textfield(text: "Email", icon: Icons.person_outlined),
                  textfield(
                    text: "password",
                    icon: Icons.lock_outlined,
                    icon1: Icons.hide_source,
                  ),
                  textbutton(message: "Sign Up", color: Colors.white),
                  Center(
                    child: Row(
                      children: [
                        Divider(
                          color: Colors.grey,
                        ),
                        // Text("OR"),
                        Divider(
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
