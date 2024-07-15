import 'package:ecommmerce/screens/otp_screen.dart';
import 'package:ecommmerce/screens/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  bool clrButton = false;
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Forgot password',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Please enter your email to receive an email for verification",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                controller: emailController,
                onChanged: (val) {
                  if (val != "") {
                    clrButton = true;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter your email",
                  prefixIcon: Icon(Icons.email),
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        emailController.clear();
                      });
                    },
                    child: Icon(
                      CupertinoIcons.multiply,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 27,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RecoveryScreen()));
                },
                child: Text(
                  'Send Code',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(55),
                    backgroundColor: Color.fromARGB(255, 230, 152, 36),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'OR',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpScreen()));
                      },
                      child: Text('verify using number',
                          style: TextStyle(color: Colors.red, fontSize: 19)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
