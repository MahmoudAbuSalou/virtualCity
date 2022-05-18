import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/Constants/AppStyle.dart';

class ExpandedText extends StatelessWidget {
  String title;
  String textDesc;
   ExpandedText({Key? key,required this.title,required this.textDesc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5.h,),
        Text(
          title,
          style: AppStyle.titleStyle
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(textDesc
          ,textAlign: TextAlign.center,
          style: AppStyle.paragraphStyle


        ),
      ],
    );
  }
}
