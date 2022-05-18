import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/util/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:virtual_city/core/widget/svgIcon.dart';

import '../../feature/main/presentation/widgets/myListTile.dart';
import '../Constants/AppAssets.dart';
import '../Constants/AppColors.dart';

class AppBarWidget extends StatelessWidget {
   AppBarWidget({Key? key,required this.scafold}) : super(key: key);

  var scafold;
  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: AppColors.white,
      leadingWidth: 30.w,
      leading: Image.asset(AppAssets.splashImage),
      centerTitle: true,
      title:  Container(
        width: 50.w,
        child: MyListTile(
          icon: AppAssets.personIcon, title: 'اسم الشخص',
        ),
      ),
      actions: [

        Padding(
          padding:  EdgeInsetsDirectional.only(end: 2.w),
          child: InkWell(
              onTap: (){
                scafold.currentState.openEndDrawer();
              },
              child: SvgIcon(assetName: AppAssets.menuIcon)),
        )
        // )
      ],
    ) ;
  }
}
