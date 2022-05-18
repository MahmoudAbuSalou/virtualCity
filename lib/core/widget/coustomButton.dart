import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../Constants/AppColors.dart';

class CustomButton extends StatefulWidget {
  final String title;
  CustomButton({required this.title});
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 6.h,
      child: Text(
        "${widget.title}",
        style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
      ),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}
