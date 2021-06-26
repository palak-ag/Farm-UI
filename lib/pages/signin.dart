import 'package:farm_ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:frugaldemo/pages/forgot_password.dart';
// import 'package:frugaldemo/pages/user_page.dart';
// import 'package:get/get.dart';
// import '../firebase_auth/auth.dart';
import '../widgets/custom_button.dart';
// import '../widgets/textfield.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({
    Key? key,
  }) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String _username = "", _password = "";
  // Authentication _auth = Authentication();
  bool isLoading = false;
  final node1 = FocusNode();
  final node2 = FocusNode();

  signIn() async {
    // String result =
    //     await _auth.signIn(username: _username, password: _password);
    await Future.delayed(Duration(seconds: 3));
    print("load complete");
    Get.to(() => HomeScreen());
    // print(result);
    // if (result == "Signed In") {
    //   // Get.to(UserProfile());
    //   print("signed in")
    // } else {
    //   // Get.snackbar("Error", "Sign In Failed!");
    //   print("Error");
    // }
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Container(
      color: Colors.blue[200]!,
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter,
      //     colors: [Colors.green[400]!, Colors.blue[100]!],
      //   ),
      // ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 4),
              // Text("Sign In",
              //     style: TextStyle(fontSize: 45, fontWeight: FontWeight.w500)),
              Image.asset(
                "assets/logo.png",
                height: 80,
              ),
              Spacer(flex: 2),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    gapPadding: 2.0,
                  ),
                ),
                onChanged: (value) => _username = value,
                textInputAction: TextInputAction.next,
                onEditingComplete: () {
                  node.nextFocus();
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    gapPadding: 2.0,
                  ),
                ),
                onChanged: (value) => _password = value,
                obscureText: true,
                textInputAction: TextInputAction.done,
                onEditingComplete: () {
                  node.unfocus();
                },
              ),
              Spacer(
                flex: 2,
              ),
              CustomButton(
                  title: "Sign In",
                  onTap: () async {
                    node.unfocus();
                    setState(() {
                      isLoading = true;
                    });
                    await signIn();
                    setState(() {
                      isLoading = false;
                    });
                  }),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  // onTap: () => Get.to(ForgotPassword()),
                  onTap: () {},
                  child: Text("Forgot Password",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic)),
                ),
              ),
              isLoading
                  ? Expanded(
                      flex: 2,
                      child: Center(child: CircularProgressIndicator()))
                  : Spacer(flex: 2),
              // Image.asset(
              //   "assets/logo.png",
              //   width: 140,
              // ),
              Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
