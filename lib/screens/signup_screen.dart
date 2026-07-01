import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget{
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState()=> _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>{
  final fullNameController = TextEditingController();
  final cityController = TextEditingController();
  final companyController = TextEditingController();
  final designationController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String gender = "Male";

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title:  const Text("Signup Screen"),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Personal",
              ),
              Tab(
                text: "Professional",
              ),
              Tab(
                text: "Account",
              )
            ]
            ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  TextField(
                    controller: fullNameController,
                    decoration: const InputDecoration(
                      labelText: "Full Name"
                    ),
                  )
                ],
              ),
              
              )
          ],
        ),
      )
      );
  }
}