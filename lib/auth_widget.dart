import 'package:flutter/material.dart';
import 'package:material3/main.dart';


//TODO REMOVE THIS WIDGET
class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login to your account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            _HeaderWidget(),
            Card(
              child: RegistrationWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Nice to see you, Existing User!"),
        _InputFormWidget(),
        
      ],
    );
  }
}

class _InputFormWidget extends StatefulWidget {
  const _InputFormWidget({super.key});

  @override
  State<_InputFormWidget> createState() => __InputFormWidgetState();
}

class __InputFormWidgetState extends State<_InputFormWidget> {
  //controllers(remove text argument for release):
  final _loginTextController = TextEditingController(text: "admin");
  final _passwordTextController = TextEditingController(text: "admin");

  String? errorText;

  //class methods:
  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    // there should be some better stronger validation, but instead we have the simlest method:
    if (login == "admin" && password == "admin") {
      errorText = null;
      Navigator.of(context).pushReplacementNamed("/main_screen");
    } else {
      errorText = "}}}}incorrect login or password{{{{";
    }
    // its not necessary to wrap the whole function in the setstate, it can be called just like this
    setState(() {});
  }

  void _resetPassword() {
    //print("reset password");
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (errorText != null)
          Text(
            errorText!,
            style: const TextStyle(
                backgroundColor: Color.fromRGBO(193, 163, 248, 0.525),
                letterSpacing: 1,
                color: Color.fromARGB(255, 25, 83, 14)),
          ),
        const SizedBox(height: 5),
        const Text("Username"),
        const SizedBox(height: 5),
        TextField(
          controller: _loginTextController,
        ),
        const SizedBox(height: 20),
        const Text("Password"),
        const SizedBox(height: 5),
        TextField(
          controller: _passwordTextController,
          obscureText: true,
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            TextButton(onPressed: _auth, child: const Text("login")),
            const SizedBox(width: 30),
            OutlinedButton(
                onPressed: _resetPassword, child: const Text("reset psw")),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class RegistrationWidget extends StatefulWidget {
  const RegistrationWidget({super.key});

  @override
  State<RegistrationWidget> createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "In order to showcase my work, you will need to create an account and logging in each time you want to access my wonderful application. I promise, it will be easy! Welcome!",
            
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kColorScheme.primaryContainer),
              foregroundColor: MaterialStatePropertyAll(kColorScheme.onPrimaryContainer)
            ),
            child: const Text("Create an account")),
      const SizedBox(
          height: 30,
        ),],
    );
  }
}