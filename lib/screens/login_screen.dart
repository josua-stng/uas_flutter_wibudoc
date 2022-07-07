import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/doctor_detail_screen.dart';
import 'package:flutter_application_1/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? passwd;
  bool isChecked = false;
  var color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Image.network(
          'https://firebasestorage.googleapis.com/v0/b/fir-storage-70290.appspot.com/o/logo.png?alt=media&token=610420e4-1b03-490c-b6b2-3b7043b230d5',
          width: 150,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Spacer(),
              const Align(
                  alignment: Alignment(-1, 0.5),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    autofocus: true,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter correct email';
                      } else if (email!.contains(value)) {
                        return null;
                      }
                      return 'not a valid';
                    },
                    onSaved: (value) => email = value,
                    decoration: const InputDecoration(
                        labelText: 'Mobile number / Email',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintText: 'Number / example@mail.com',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    autofocus: true,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      } else if (passwd!.contains(value)) {
                        return null;
                      }
                      return 'not a valid';
                    },
                    onSaved: (value) => passwd = value,
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      const Text('Remember Me')
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: new ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {
                          final form = _formKey.currentState;
                          form!.save();
                          if (form.validate()) {
                            print('$email $passwd');
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homeScreen()));
                          }
                          if (passwd!.isEmpty) {
                            return print('password salah');
                          } else if (email!.isEmpty) {
                            return print('email salah');
                          }
                        },
                        child: const Text('Login'),
                      )),
                  //   child: const Text('Login'),
                  // )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text('Dont have an account?'),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ));
                          },
                          child: const Text('Register now'))
                    ],
                  )
                ],
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
