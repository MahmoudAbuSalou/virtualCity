import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/Constants/AppAssets.dart';
import 'package:virtual_city/core/Constants/AppColors.dart';
import 'package:virtual_city/core/Constants/AppStyle.dart';
import 'package:virtual_city/core/util/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:virtual_city/feature/contact/bloc/contactCubit/contact_cubit.dart';

import '../../../../core/widget/appBarWidget.dart';
import '../../../../core/widget/drawer.dart';


class ContactPage extends StatelessWidget {
var name = TextEditingController();
var email = TextEditingController();
var message = TextEditingController();
 bool page;

  ContactPage({Key? key,required this.page}) : super(key: key);
final GlobalKey<ScaffoldState> scafoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => ContactCubit(),
  child: BlocConsumer<ContactCubit, ContactState>(

  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return  Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.background),
            fit: BoxFit.cover
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 3.h, right: 2.w, left: 2.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            children: [
              Positioned(child:Image.asset(AppAssets.iconPosition),
                top: -20,
                right: -40,

              ),
              Column(
                children: [
                  if(AppSharedPreferences.hasToken)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 30.w,
                          height: 5.h,

                          decoration:  BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.black12
                                  ,blurRadius: 10,
                                  offset: Offset(2,2),
                                ),
                              ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:(AppSharedPreferences.hasBuild)? Text(AppSharedPreferences.getBuild,style: TextStyle(
                            fontSize: 15.sp,
                          ),):Text(''),
                        ),

                        Text('   : رقم بنائك',style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  SizedBox(height:6.h,),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Icon(Icons.phone_in_talk_sharp,color: AppColors.primaryColor,),
                      SizedBox(width: 4.w,),
                      Text('تواصل معنا ',style: AppStyle.titleStyle,),
                    ],
                  ),

                  SizedBox(height:6.h,),
                  Container(
                    height: 45,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: TextFormField(

                      onSaved: (String ?value){
                        name.text = value!;
                      },
                      controller: name,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.right,

                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(1),
                        filled: true,
                        fillColor: Colors.white.withOpacity(.7),


                        suffixIcon: const Padding(
                            padding: EdgeInsets.only(left: 1),
                            child: Icon(Icons.person,color: Color(0xff017a9e),)
                        ),
                        hintText: 'الاسم',
                        hintStyle:  TextStyle(
                            color: Colors.grey[700],
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:3.h,),
                  Container(
                    height: 45,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      onSaved: (String ?value){
                        email.text = value!;
                      },
                      controller: email,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.right,

                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(1),
                        filled: true,
                        fillColor: Colors.white.withOpacity(.7),

                        suffixIcon: const Padding(
                            padding: EdgeInsets.only(left: 1),
                            child: Icon(Icons.email,color: Color(0xff017a9e))
                        ),
                        hintText: 'الإيميل',
                        hintStyle:  TextStyle(
                            color: Colors.grey[700],
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:7.h,),
                  Container(
                    height: 120,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: message,

                      onSaved: (String ?value){
                        message.text = value!;
                      },
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      minLines: 6,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding:  EdgeInsets.only(right: 6.w),
                        filled: true,
                        fillColor: Colors.white.withOpacity(.7),

                        hintText: 'اكتب رسالة',
                        hintStyle:  TextStyle(
                            color: Colors.grey[700],
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold
                        ),
                        border:InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height:5.h,),
                  InkWell(
                    onTap: ()=> ContactCubit.get(context).contact(name: name.text, email: email.text, note: message.text),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Container(
                          alignment: Alignment.center,
                          width: 30.w,
                          height: 5.h,

                          decoration: BoxDecoration(
                            color:AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                              onPressed: (){
                                ContactCubit.get(context).contact(name: name.text, email: email.text, note: message.text);
                              },
                              child: Text('إرسال',style: AppStyle.titleStyle.copyWith(
                                  color: Colors.white
                              )))

                      ),
                    ),
                  ),

                  SizedBox(height: 9.h,),



                ],
              ),
            ],
          ),
        ),
      ),
    );
  },
),
);
  }
}
