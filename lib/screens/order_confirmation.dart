import 'package:ecommmerce/screens/order_success_screen.dart';
import 'package:ecommmerce/screens/payment_method_screen.dart';
import 'package:ecommmerce/screens/shipping_address_screen.dart';
import 'package:ecommmerce/widgets/container_button_model.dart';
import 'package:flutter/material.dart';

class OrderConfirmation extends StatelessWidget {
  const OrderConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Confirm Order"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Shipping Address",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dear pro",
                            style: TextStyle(fontSize: 16),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ShippingAddressScreen()));
                            },
                            child: Text(
                              "Change",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "3 Newbridge Court",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Chino Hills, CA, 97545 United States",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentMethodScreen()));
                    },
                    child: Text(
                      "Change",
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          )
                        ]),
                    child: Image.asset("images/mpesa.jpeg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("07******91"),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Delivery Method",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "images/fedxicon.jpeg",
                          height: 60,
                        ),
                        Text("2-7 Days")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 80,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          " Home Delivery",
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text("2-7 Days")
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sub totals",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  Text(
                    "\$340.00",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping cost",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  Text(
                    "\$34.00",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Divider(
                height: 20,
                thickness: 2,
                color: Colors.black,
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Totals",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$384.00",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 23,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderSuccessScreen()));
                },
                child: ContainerButtonModel(
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: Colors.red,
                  itext: "Confirm Order",
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
