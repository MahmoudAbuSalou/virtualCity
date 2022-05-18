import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/Constants/AppAssets.dart';
import '../../../../core/Constants/AppStyle.dart';

class CardItem extends StatelessWidget {
   CardItem({Key? key,required this.image,required this.subTitle,required this.desc}) : super(key: key);

    String image;
    String subTitle;
    String desc;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(height: 2.h,),
        Image.asset( image),
        SizedBox(height: 2.h,),
        Text(subTitle,style: AppStyle.titleStyle.copyWith(
          fontWeight: FontWeight.normal
        ),),
        SizedBox(height: 2.h,),
        Text(desc,style: AppStyle.paragraphStyle.copyWith(
            fontWeight: FontWeight.normal,


        ),
        textAlign: TextAlign.center),
        SizedBox(height: 2.h,),
      ],
    );
  }
}
