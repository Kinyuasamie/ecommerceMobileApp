import 'package:ecommmerce/screens/shipping_address_screen.dart';
import 'package:ecommmerce/widgets/container_button_model.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });
  @override
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Payment Method"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    border: _type == 1
                        ? Border.all(width: 1, color: Colors.orange)
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: Colors.orange,
                            ),
                            Text(
                              "Amazon Pay",
                              style: _type == 1
                                  ? const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    )
                                  : const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                            ),
                            const SizedBox(
                              width: 90,
                            ),
                            Image.asset("images/amazonpay.jpeg")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    border: _type == 1
                        ? Border.all(width: 1, color: Colors.orange)
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: Colors.orange,
                            ),
                            Text(
                              "Visa Pay",
                              style: _type == 1
                                  ? const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    )
                                  : const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            Image.asset("images/visa.jpeg")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    border: _type == 1
                        ? Border.all(width: 1, color: Colors.orange)
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: Colors.orange,
                            ),
                            Text(
                              "Paypal",
                              style: _type == 1
                                  ? const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    )
                                  : const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            Image.asset("images/paypal.jpeg")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    border: _type == 1
                        ? Border.all(width: 1, color: Colors.orange)
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: Colors.orange,
                            ),
                            Text(
                              "M-pesa",
                              style: _type == 1
                                  ? const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    )
                                  : const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            Image.asset("images/mpesa.jpeg")
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
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
                  height: 20,
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
                  height: 20,
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
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
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShippingAddressScreen()));
                  },
                  child: ContainerButtonModel(
                    containerWidth: size.width,
                    bgColor: Colors.red,
                    itext: "Complete Payment",
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
