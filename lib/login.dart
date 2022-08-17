import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_app/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool _isOpen = true;

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();

  TextEditingController _password = TextEditingController();

  TextEditingController _firstname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.grey[900],
          title: const Text('Login Screen'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    autocorrect: true,
                    controller: _firstname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      labelText: 'First Name',
                      hintText: 'Enter your first name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    autocorrect: true,
                    controller: _lastname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      labelText: 'Last Name',
                      hintText: 'Enter your last name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.length < 6) {
                        return 'Email must be at least 6 characters long';
                      } else if (!value.contains('@')) {
                        return 'Invalid email address';
                      } else if (!value.contains('.')) {
                        return 'Invalid email address';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      labelText: 'Email Address',
                      hintText: 'example@gmail.com',
                      labelStyle: TextStyle(
                        color: Colors.grey[900],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _phone,
                    
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return 'Please enter your phone number';
                      } else if (value.length < 11) {
                        return 'Phone number must be at least 11 characters long';
                      } else if (value.length > 11) {
                        return 'phone number must be at least 11 digits';
                      } else {
                        return null;
                      }
                    }),
                    keyboardType: TextInputType.phone,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      labelText: 'Phone Number',
                      hintText: 'Enter your phone number',
                      labelStyle: TextStyle(
                        color: Colors.grey[900],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _password,
                    obscureText: _isOpen,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.length < 6) {
                        return 'Password must be at least 6 characters long';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isOpen ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey[900],
                        ),
                        onPressed: () {
                          setState(() {
                            _isOpen = !_isOpen;
                          });
                        },
                      ),
                      prefix: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      labelText: 'Password',
                      hintText: '********',
                      labelStyle: TextStyle(
                        color: Colors.grey[900],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashbaord(
                              fname: _firstname.text,
                              email: _email.text,
                              phn: _phone.text,
                            ),
                          ),
                        );
                        
                      }
                    },
                    color: Colors.blueAccent,
                    child: const Text('Validate Field'),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _firstname = TextEditingController();
    _lastname = TextEditingController();
    _phone = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _firstname.dispose();
    _lastname.dispose();
    _phone.dispose();
    super.dispose();
  }
}
