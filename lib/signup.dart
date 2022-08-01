import 'package:flutter/material.dart';
import 'package:login_page_3/main.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value = true;
  bool value1 = true;

  @override
  void initState() {
    // TODO: implement initState
    value = true;
    value1 = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Image.asset("assets/super.png"),
            ),
            Text(
              "Create an Account",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        width: 1, color: Colors.green), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Colors.green,
                  ),
                  hintText: 'Mobile Number',
                  //suffixIcon: Icon(Icons.aspect_ratio_rounded),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        width: 1, color: Colors.green), //<-- SEE HERE
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        width: 1, color: Colors.green), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                obscureText: value,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        width: 1, color: Colors.green), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.green,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          value = !value;
                        });
                      },
                      icon: Icon(
                          value ? Icons.visibility_off : Icons.visibility)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                obscureText: value1,
                decoration: InputDecoration(
                  hintText: 'Enter Confirm Password',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        width: 1, color: Colors.green), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.green,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          value1 = !value1;
                        });
                      },
                      icon: Icon(
                          value1 ? Icons.visibility_off : Icons.visibility)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.grey, // <-- Change this
                    fontSize: 10,
                  ),
                  hintText: '2,2,mota varachha surat, Gujarat,IN,395006',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),

                    borderSide: BorderSide(
                        width: 1, color: Colors.green), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.add_location,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                height: 70,
                width: 500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //side: BorderSide(width: 3, color: Colors.black),
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  // color: Colors.green[300],
                  child: Text(
                    "Sign Up",
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
                      "Already have an account?  ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign in!",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
