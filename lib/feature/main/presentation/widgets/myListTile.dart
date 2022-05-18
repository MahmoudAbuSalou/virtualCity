import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/Constants/AppStyle.dart';
import 'package:virtual_city/core/util/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:virtual_city/core/widget/svgIcon.dart';

class MyListTile extends StatelessWidget {
   MyListTile({Key? key,required this.icon,required this.title}) : super(key: key);
   String title;
   String icon;

  @override
  Widget build(BuildContext context) {
    return (AppSharedPreferences.hasToken)? Container(
      width: 30.w,
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Row(
        children: [
          SvgIcon(assetName: icon,),
          SizedBox(width: 2.w,),
          Text(AppSharedPreferences.getName,style:AppStyle.titleStyle,)
        ],
      ),
    ):Container();
  }
}
