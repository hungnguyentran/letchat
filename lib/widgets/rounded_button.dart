import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letchat/components/constant.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.buttonName,
    required this.buttonRoute,
  }) : super(key: key);

  final String buttonName;
  final String buttonRoute;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0), color: Colors.yellow),
      child: TextButton(
        onPressed: () => {Get.toNamed(buttonRoute)},
        child: Text(
          buttonName,
          style: kButtonText.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
