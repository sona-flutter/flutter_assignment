import 'package:flutter/material.dart';
import 'package:todoapp/file1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool nightMode = false;
  bool flag = true;
  List loginCredentials = [];
  String userNamee = 'sonali';
  String pass = '12345';

  ///CONTROLLERS
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  // KEYS
  GlobalKey<FormFieldState> userNameKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 184, 100, 94),
      appBar: AppBar(
        actions: const [
          Icon(Icons.more_vert, color: Colors.white),
        ],
        backgroundColor: Colors.purple,
        title: const Text(
          'Hello Sonali...!',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, bottom: 30, right: 20, left: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://tse3.mm.bing.net/th?id=OIP.cE3v_-x_OsefQuyTt5wxEwHaHa&pid=Api&P=0&h=180',
                  height: 90,
                  width: 150,
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: userNameTextEditingController,
                  // key: userNameKey,
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    label: const Text("Enter username"),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 5,
                      ),
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
                  // key: passwordKey,
                  obscureText: flag,
                  focusNode: FocusNode(),
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    label: const Text("Enter password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  validator: (value) {
                    // print("In PASSWORD VALIDATOR");
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      bool loginValidated = _formKey.currentState!.validate();
                      if (loginValidated) {
                        if (userNameTextEditingController.text == userNamee &&
                            passwordTextEditingController.text == pass) {
                          setState(
                            () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => ToDoApp(),
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Text(
                                    "Login Successful",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        } else {
                          if (userNameTextEditingController.text != userNamee &&
                              passwordTextEditingController.text != pass) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.red,
                                content: Text(
                                  "Login Failed, Please Check Details",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            );
                          }
                        }
                      }

                      // bool userNameValidated = userNameKey.currentState!.validate();
                      // bool passwordValidated = passwordKey.currentState!.validate();
                      // if (userNameValidated && passwordValidated) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //       content: Text("Login Successful"),
                      //     ),
                      //   );
                      // } else {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //       content: Text("Login Failed"),
                      //     ),
                      //   );
                      // }
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.purple,
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
