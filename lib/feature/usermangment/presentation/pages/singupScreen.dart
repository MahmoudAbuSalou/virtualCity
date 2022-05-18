import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/feature/main/presentation/pages/homepage.dart';
import 'package:virtual_city/feature/main/presentation/pages/main_page.dart';
import 'package:virtual_city/feature/usermangment/bloc/AuthCubit/auth_cubit.dart';
import '../../../../core/Constants/AppAssets.dart';
import '../../../../core/Constants/AppColors.dart';
import '../../../../core/Constants/AppStyle.dart';
import '../../../../core/util/SharedPreferences/SharedPreferencesHelper.dart';
import '../../../../core/widget/coustomButton.dart';
import '../../../../core/widget/coustomTextFaild.dart';

class singupScreen extends StatefulWidget {
  @override
  State<singupScreen> createState() => _singupScreenState();
}

class _singupScreenState extends State<singupScreen> {

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
                                "انشاء حساب",
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
                  child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    CoustomTextFaild(hint: "name", icon: AppAssets.person,controller:cubit.nameController ,),
                    SizedBox(
                      height: 2.h,
                    ),
                    CoustomTextFaild(hint: "email", icon: AppAssets.email,controller: cubit.emailController),
                    SizedBox(
                      height: 2.h,
                    ),
                    CoustomTextFaild(
                        hint: "password", icon: AppAssets.password,controller: cubit.passwordController),
                    SizedBox(
                      height: 2.h,
                    ),
                    CoustomTextFaild(
                        hint: "repassword", icon: AppAssets.password,controller: cubit.passwordController),
                    SizedBox(
                      height: 2.h,
                    ),
                    InkWell(
                      child:  Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        child: Container(

                         height: 7.h,
                          width:100.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                            border: Border.all(width: 4,color: Colors.grey.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                SizedBox(width: 3.w,),
                                Icon(Icons.calendar_today_outlined,color: AppColors.seconedaryColor,),
                               SizedBox(width: 4.w,),
                                Text('birth day',style: TextStyle(color: AppColors.grey,fontSize: 12.sp),)
                              ],
                            )
                          ),
                        ),
                      ),
                      onTap: () =>   showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.parse('2200-01-01'))
                          .then((value) {
                        print(value.toString().substring(0, 10));
                        cubit.birthdateController.text = value.toString().substring(0, 10);
                        print(    cubit.birthdateController.text);
                        //DateFormat.yMMMd().format(value!);
                      }).catchError((error) {
                        print(error.toString());
                      })
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    InkWell(
                      onTap: (){
                        cubit.signUp(context);



                      },
                      child: CustomButton(title: "create",),
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
