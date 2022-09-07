import 'package:flutter/material.dart';

class LoginMyApp extends StatelessWidget {
  static const String id = 'LoginMyApp';
  const LoginMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: NetworkImage(
                      'data:image/jpeg;base64,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',
                    ),
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Maintenance",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Rubik-Medium',
                        ),
                      ),
                      Text(
                        "Box",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Rubik-Medium',
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Rubik-Medium',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "This is the time to learn flutter,if you want to\n  grow in your life you have to work hard.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Rubik-Regular',
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  label: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                  fillColor: Colors.black12,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black87,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  label: Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                  fillColor: Colors.black12,
                  filled: true,
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black87,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Rubik-Medium',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontFamily: 'Rubik-Regular',
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontFamily: 'Rubik-Medium',
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
