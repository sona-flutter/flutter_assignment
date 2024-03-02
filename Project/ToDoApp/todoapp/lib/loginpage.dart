// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ///CONTROLLERS
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  ///KEYS
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Login Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.network(
                "https://tse3.mm.bing.net/th?id=OIP.GPuO4tN-kYIfiMQobRqgjAHaHa&pid=Api&P=0&h=180",
                width: 90,
                height: 90,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: userNameTextEditingController,
                decoration: InputDecoration(
                  hintText: "Enter username",
                  label: const Text("Enter username"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordTextEditingController,

                ///Key:PasswordKey,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),
                validator: (value) {
                  // ignore: avoid_print
                  print("In PASSWORD VALIDATOR");
                  if (value == null || value.isNotEmpty) {
                    return "Please enter paswword";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  bool loginValidated = _formKey.currentState!.validate();

                  if (loginValidated) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Login Successful"),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Login Failed"),
                      ),
                    );
                  }
                },
                child: const Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
