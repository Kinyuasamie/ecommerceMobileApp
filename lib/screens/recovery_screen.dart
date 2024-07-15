//import 'package:ecommmerce/screens/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<RecoveryScreen> {
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
                'Recovery of password',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                controller: emailController,
                onChanged: (val) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter reset code",
                  prefixIcon: Icon(Icons.numbers),
                  suffix: InkWell(
                    onTap: () {},
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
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Enter password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Confirm password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RecoveryScreen()));
                },
                child: Text(
                  'Reset Password',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(55),
                    backgroundColor: Color.fromARGB(255, 230, 152, 36),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
