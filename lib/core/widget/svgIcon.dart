import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/Constants/AppColors.dart';

class SvgIcon extends StatelessWidget {
   SvgIcon({Key? key,required this.assetName}) : super(key: key);
  String assetName;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
        assetName,
      width: 6.w,



    );
  }
}
