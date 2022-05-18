import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/Constants/AppAssets.dart';
import '../../../../core/Constants/AppStyle.dart';

class IconBar extends StatelessWidget {
   IconBar({Key? key,required this.label,required this.icon}) : super(key: key);
   String icon;
   String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 14),
      child: Column(
        children: [
          SvgPicture.asset(icon,color: const Color(0xff017a9e),height: 4.h,width: 8.w,),
          Padding(
            padding:  EdgeInsets.only(left: 3.w,right: 3.w,bottom: 1),
            child: (label!='تواصل معنا')?Text(label,style: AppStyle.labelStyle,):Text(label,style: AppStyle.labelStyle.copyWith(
              fontSize: 8.sp
            ),),
          )
        ],
      ),
    );
  }
}
