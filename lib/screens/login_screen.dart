import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  
  final passwordController = TextEditingController();
  final userNameController = TextEditingController();

  bool obscurePassword = true;
  String? usernameError; 
  String? passwordError;

  void login(){
    setState(() {
      usernameError = null;
      passwordError = null;
    });

    if(userNameController.text.trim().isEmpty){
      setState(() {
        usernameError = "Username cannot be empty";
      });
    }

    if(passwordController.text.trim().isEmpty){
      passwordError = "Password cannot be empty";
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("lib/assets/images/logo.png"),
                const SizedBox(height: 50,),
                TextField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    //hint
                    labelText: "Username",
                    border: const OutlineInputBorder(),
                    errorText: usernameError
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: passwordController,
                  obscureText: obscurePassword,
                  decoration: InputDecoration(
                    //hint
                    labelText: "Password",
                    border: const OutlineInputBorder(),
                    errorText: passwordError,
                    suffixIcon: IconButton(
                      icon:Icon(obscurePassword? Icons.visibility:Icons.visibility_off) , //obscure password -> state -> true
                      onPressed: (){
                        setState(() {
                          obscurePassword = !obscurePassword;//boolean -> true = false
                        });
                      },
                      )
                  ),
                ),
                const SizedBox(height:30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: login,
                    child: const Text("Login"),
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