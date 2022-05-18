import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/Constants/AppAssets.dart';
import 'package:virtual_city/core/Constants/AppColors.dart';
import 'package:virtual_city/core/util/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:virtual_city/core/widget/coustomButton.dart';
import 'package:virtual_city/feature/main/presentation/pages/homepage.dart';
import 'package:virtual_city/feature/main/presentation/pages/main_page.dart';
import 'package:virtual_city/feature/usermangment/presentation/pages/loginScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Stack(
          children: [
            Container(
              height: 100.h,
              width: 100.w,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.splashImage),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>  MainPage(tabIndex: 1),
                        ));
                      },
                      child: CustomButton(title: "لنبدأ الأن"))
                ],
              ),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppAssets.background),
                      fit: BoxFit.cover)),
            ),
          ],
        ));
  }
}
