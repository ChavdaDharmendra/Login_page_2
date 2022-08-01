import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_page_3/signup.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MyApp(),
    enabled: !kReleaseMode,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LoginPage",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginApp(),
    );
  }
}

class LoginApp extends StatefulWidget {
  LoginApp({Key? key}) : super(key: key);

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  bool value = true;
  bool value2 = false;
  @override
  void initState() {
    // TODO: implement initState
    value = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Container(
                  child: Image.asset("assets/super.png"),
                ),
              ),
            ),
            Text(
              "Login Account",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "With your phone number",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Mobile Number Or Email',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        width: 1, color: Colors.green), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextFormField(
                obscureText: value,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.green,
                    ), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.green,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(value ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        value = !value;
                      });
                    },
                  ),
                ),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter some text';
                //   }
                //   return null;
                // },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password!",
                    style: TextStyle(color: Color.fromARGB(255, 238, 112, 103)),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(
                "Agreed Privacy Policy ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              value: value2,
              onChanged: ((value2) => setState(() => this.value2 = value2!)),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                height: 55,
                width: 500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //side: BorderSide(width: 3, color: Colors.black),
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  // color: Colors.green[300],
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have a account?  ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "Sign up!",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
