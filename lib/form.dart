import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_route_font/second_screen.dart';

class FormScreen extends StatefulWidget {
  FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: "Enter your email"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "email can't be empty";
                    } else if (!val.contains("@")) {
                      return "must include '@'";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter your age"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "age can't be empty";
                    } else if (val.length > 3) {
                      return "enter a valid value";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  decoration:
                  InputDecoration(hintText: "Enter your phone number"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "phone can't be empty";
                    } else if (val.length < 11) {
                      return "enter a valid phone number";
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (_) => SecondScreen()));
                      }
                    },
                    child: Text("Check")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
