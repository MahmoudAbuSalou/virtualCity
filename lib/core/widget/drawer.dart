import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/util/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:virtual_city/core/widget/svgIcon.dart';
import 'package:virtual_city/feature/main/presentation/pages/main_page.dart';

import '../../feature/contact/presentation/pages/contact.dart';
import '../../feature/splash/presentation/pages/splashScreen.dart';
import '../../feature/usermangment/presentation/pages/loginScreen.dart';
import '../../feature/usermangment/presentation/pages/singupScreen.dart';
import '../Constants/AppAssets.dart';
import '../Constants/AppColors.dart';
import '../Constants/AppStyle.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer
      (

      child: Directionality(
        textDirection: TextDirection.rtl,
        child: (AppSharedPreferences.hasToken)?Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.backgroundDrawer),
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: (){

                      },
                      child:ListTile(
                        leading:SvgIcon(assetName: AppAssets.avatarIcon,),
                        title:  AutoSizeText(
                          AppSharedPreferences.getName,
                          style: AppStyle.titleStyle.copyWith(
                              color: AppColors.white
                          ),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){



                      },
                      child: ListTile(
                        leading:SvgIcon(assetName: AppAssets.buildIcon),
                        title: AutoSizeText(
                         'رقم شقتك هو '+ AppSharedPreferences.getBuild,
                          style: AppStyle.titleStyle.copyWith(
                              color: AppColors.white
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){

                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Scaffold(
                          body:MainPage(tabIndex: 2) ,),));



                      },
                      child: ListTile(
                        leading:SvgIcon(assetName: AppAssets.phone1),
                        title: AutoSizeText(
                          'تواصل معنا',
                          style: AppStyle.titleStyle.copyWith(
                              color: AppColors.white
                          ),
                        ),
                      ),
                    )
                    ,

                    GestureDetector(
                      onTap: (){
                        AppSharedPreferences.signOut();
                        if(!AppSharedPreferences.hasToken)
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage(tabIndex: 1,

                          ),));
                      },
                      child: ListTile(
                        leading: SvgIcon(assetName: AppAssets.logoutIcon,),
                        title:  AutoSizeText(
                          'تسجيل الخروج',
                          style: AppStyle.titleStyle.copyWith(
                              color: AppColors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    Image.asset(AppAssets.logo)
                  ],
                ),
              ],
            ),
          ),
        ):Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.backgroundDrawer),
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [

                    SizedBox(height: 10.h,),

                    InkWell(
                      onTap: (){


                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Scaffold(
                          body:MainPage(tabIndex: 2) ,),));

                      },
                      child: ListTile(
                        leading:SvgIcon(assetName: AppAssets.phone1,),
                        title: AutoSizeText(
                          'تواصل معنا',
                          style: AppStyle.titleStyle.copyWith(
                              color: AppColors.white
                          ),
                        ),
                      ),
                    )
                    ,

                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>singupScreen(),));
                      },
                      child: ListTile(
                        leading: Icon(Icons.login,color: Colors.white,),
                        title:  AutoSizeText(
                          'إنشاء حساب',
                          style: AppStyle.titleStyle.copyWith(
                              color: AppColors.white
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginScreen(),));
                      },
                      child: ListTile(
                        leading: SvgIcon(assetName: AppAssets.signInIcon,),
                        title:  AutoSizeText(
                          'تسجيل دخول',
                          style: AppStyle.titleStyle.copyWith(
                              color: AppColors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    Image.asset(AppAssets.logo)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
