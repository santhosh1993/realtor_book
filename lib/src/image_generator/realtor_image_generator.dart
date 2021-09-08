import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:realtor_book/src/config/custom_colors.dart';
import 'package:realtor_book/src/config/images.dart';

class RealtorImageGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageContainer(),
    );
  }
}

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              Images.exampleImage(),
              fit: BoxFit.cover,
            )
          ],
        ),
        Container(
          height: 50,
          child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Text("Name"),
                  Text("Phone"),
                  Text("Powered by Retailer book")
                ],
              )),
              Container(
                width: 50,
                height: 50,
                color: CustomColors.appBar,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              )
            ],
          ),
        )
      ],
    );
  }
}
