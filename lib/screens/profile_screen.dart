import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        centerTitle: true,
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        actions: [
          Icon(Icons.person),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 173, 172, 177),
              ),
            ),
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color.fromARGB(255, 163, 157, 154),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              
            )
          ],
        ),
      ),
    );
  }
}
//  const SingleChildScrollView(
//           padding: EdgeInsets.all(20),
          
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Name:",
//                       style: TextStyle(
//                           fontSize: 25,
//                           color: Colors.black87,
//                           fontWeight: FontWeight.w700),
//                     ),
//                     Text(
//                       "Samuel Kinyua",
//                       style: TextStyle(
//                           fontSize: 22,
//                           color: Colors.black87,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Age:",
//                       style: TextStyle(
//                           fontSize: 25,
//                           color: Colors.black87,
//                           fontWeight: FontWeight.w700),
//                     ),
//                     Text(
//                       "23",
//                       style: TextStyle(
//                           fontSize: 22,
//                           color: Colors.black87,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Membership",
//                       style: TextStyle(
//                           fontSize: 25,
//                           color: Colors.black87,
//                           fontWeight: FontWeight.w700),
//                     ),
//                     Text(
//                       "Active",
//                       style: TextStyle(
//                           fontSize: 22,
//                           color: Colors.black87,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Residence:",
//                       style: TextStyle(
//                           fontSize: 25,
//                           color: Colors.black87,
//                           fontWeight: FontWeight.w700),
//                     ),
//                     Text(
//                       "Ruiru",
//                       style: TextStyle(
//                           fontSize: 22,
//                           color: Colors.black87,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ],
//                 ),
//               ),
//               Row()
//             ],
//           ),