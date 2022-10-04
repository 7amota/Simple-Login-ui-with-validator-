
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  dynamic passwordControler = TextEditingController();
  dynamic emailCountroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            controller: emailCountroler,
            onFieldSubmitted: (String value) {
              print(value);
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: passwordControler,
            onFieldSubmitted: (String password) {
              print(password);
            },
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(labelText: "Password", border: OutlineInputBorder(), prefixIcon: Icon(Icons.lock), suffixIcon: Icon(Icons.remove_red_eye)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 40,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                print(emailCountroler.text);
                print(passwordControler.text);
              },
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "Don't have a acount",
                style: TextStyle(fontSize: 15),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 15),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
