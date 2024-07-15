import 'dart:ffi';

import 'package:ecommmerce/screens/payment_method_screen.dart';
import 'package:ecommmerce/widgets/container_button_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  List<String> imageList = [
    "images/image1.jpeg",
    "images/image2.jpeg",
    "images/image3.jpeg",
    "images/image4.jpeg",
  ];
  List productTitles = [
    "Warm Zipper",
    "Knitted Wool",
    "Zipper win",
    "Child Win"
  ];
  List prices = [
    "\$300",
    "\$220",
    "\$120",
    "\$90",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Cart"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 460,
                child: ListView.builder(
                    itemCount: imageList.length,
                    //physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(
                                splashRadius: 20,
                                activeColor: Colors.orange,
                                value: true,
                                onChanged: (val) {}),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imageList[index],
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productTitles[index],
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Hooded jacket",
                                  style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  prices[index],
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  CupertinoIcons.add,
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select All",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (val) {},
                    activeColor: Colors.orange,
                  )
                ],
              ),
              Divider(
                thickness: 2,
                height: 20,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "\$340",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentMethodScreen()));
                },
                child: ContainerButtonModel(
                  itext: "checkout",
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
