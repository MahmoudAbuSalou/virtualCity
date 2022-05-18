import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:virtual_city/core/Constants/AppAssets.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/Constants/AppColors.dart';
import 'package:virtual_city/core/Constants/AppStyle.dart';
import 'package:virtual_city/core/util/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:virtual_city/core/widget/coustomButton.dart';
import 'package:virtual_city/core/widget/coustomTextFaild.dart';
import 'package:virtual_city/feature/main/presentation/pages/main_page.dart';
import 'package:virtual_city/feature/usermangment/bloc/AuthCubit/auth_cubit.dart';

import '../../../main/presentation/pages/homepage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  initState(){
    AppCubit.get(context).emailController.text='';
    AppCubit.get(context).passwordController.text='';
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var cubit=AppCubit.get(context);
        return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(100.w, 35.h),
              child: Stack(
                children: [
                  Container(
                    width: 100.w,
                    height: 35.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppAssets.pageHeader,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: 100.w,
                    height: 35.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppAssets.background,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                      top: 10.h,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        width: 100.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Text(
                                "تسجيل دخول",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white),
                              ),
                            ),
                            SizedBox(
                              width: 40.w,
                              child: Image.asset(AppAssets.logo),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            body: Container(
              height: 100.h,
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 7.h,
                        ),
                        CoustomTextFaild(
                            hint: "email", icon: AppAssets.email, controller:cubit.emailController),
                        SizedBox(
                          height: 2.h,
                        ),
                        CoustomTextFaild(
                            hint: "password", icon: AppAssets.password,controller: cubit.passwordController,),
                        SizedBox(
                          height: 9.h,
                        ),
                        InkWell(
                          onTap: (){
                            cubit.login(context);

                          },
                          child: CustomButton(title: "login",),
                        )
                      ])),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      image: AssetImage(
                        AppAssets.background,
                      ),
                      fit: BoxFit.cover)),
            ));
      },
    );
  }
}
