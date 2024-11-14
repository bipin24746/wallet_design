import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet/logindetails/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String selectedIcon = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign Up!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text("Create New Account"),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(Icons.numbers),
                  hintText: "Mobile Number"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Have Refer Code?",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Full Name"),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Select Gender"),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIcon = "man";
                    });
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: selectedIcon == "man"
                                ? Colors.blue
                                : Colors.black),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.man,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIcon = "woman";
                    });
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: selectedIcon == "woman"
                                ? Colors.blue
                                : Colors.black),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.woman,
                      size: 40,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                  hintText: "Password"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "User 8 or more characters with different letters, numbers & symbols.",
              style: TextStyle(fontSize: 11),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "By creating your account you have to agree with our",
                  style: TextStyle(fontSize: 11),
                ),
                Text("Terms and",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              children: [
                Text(
                  "Conditions ",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                Text("& "),
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Create New Account",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? - "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "sign in",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
