import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/Constants/AppColors.dart';

class AppStyle{


  static TextStyle titleStyle=GoogleFonts.tajawal(
    textStyle: TextStyle(
      color:AppColors.primaryColor ,fontSize:14.sp ,fontWeight:FontWeight.bold ,
    )
  );
  static TextStyle paragraphStyle=GoogleFonts.tajawal(
    textStyle: TextStyle(
      color:Colors.black ,fontSize:12.sp  ,
      fontWeight: FontWeight.w500,

    )
  );
  static TextStyle labelStyle=GoogleFonts.tajawal(
    textStyle: TextStyle(
      color:Colors.black ,fontSize:10.sp  ,
      fontWeight: FontWeight.w500,
    )
  );
}