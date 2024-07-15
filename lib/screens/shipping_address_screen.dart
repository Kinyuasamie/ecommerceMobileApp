import 'package:ecommmerce/screens/order_confirmation.dart';
import 'package:ecommmerce/widgets/container_button_model.dart';
import 'package:flutter/material.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Shipping Address"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Full Name"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Phone Number"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "address"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "City"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "State/Province"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Zip code(postal code))",
                )),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Country"),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderConfirmation()));
                  },
                  child: ContainerButtonModel(
                    containerWidth: MediaQuery.of(context).size.width,
                    itext: "Add Shipping Address",
                    bgColor: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
