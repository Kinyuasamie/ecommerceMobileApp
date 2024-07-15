import 'package:ecommmerce/screens/navigator_screen.dart';
import 'package:ecommmerce/widgets/container_button_model.dart';
import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                "images/success.jpeg",
                height: 250,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Success",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              Text(
                "Your order Has been successful received",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text(
                "Thank you! for choosing our services",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NavigatorScreen()));
              },
              child: ContainerButtonModel(
                containerWidth: MediaQuery.of(context).size.width,
                bgColor: Colors.red,
                itext: "Continue",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
