import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? passwd;
  bool isChecked = false;
  var color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'images/logo.png',
          width: 150,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const Spacer(),
              const Align(
                  alignment: Alignment(-1, 0.5),
                  child: Text(
                    'Register',
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
                        return "This field can't be empty";
                      } else if (email!.contains(value)) {
                        return null;
                      }
                    },
                    onSaved: (value) => email = value,
                    decoration: const InputDecoration(
                        labelText: 'Full Name',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                  ),
                  const SizedBox(
                    height: 15,
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
                        hintText: 'Number / example@mail.com',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                  ),
                  const SizedBox(
                    height: 10,
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
                        hintText: 'Enter your password',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
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
                      Row(
                        children: const [
                          Text(
                            'I agree to  ',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            'Terms and Condition',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: ElevatedButton(
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
                                    builder: (context) => LoginScreen()));
                          }
                        },
                        child: const Text('Register'),
                      ))
                ],
              ),
              Row(
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: const Text('Login'))
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
