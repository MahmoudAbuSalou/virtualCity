import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:virtual_city/core/API/dio_helper.dart';
import 'package:virtual_city/feature/usermangment/data/UserModel/user_model.dart';

import '../../../../core/API/URL.dart';
import '../../../../core/Constants/AppStyle.dart';
import '../../../../core/util/SharedPreferences/SharedPreferencesHelper.dart';
import '../../../main/presentation/pages/main_page.dart';

part 'auth_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

 bool log=false;
  static AppCubit get(context) => BlocProvider.of(context);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  late UserResponse user;
  void signUp(context) {
    log=false;

    print('loading');
    emit(LoadingSignUp());

    DioHelper.postData(url: signUpURL, data: {
      "username": nameController.text,
      "email": emailController.text,
      "password": passwordController.text,
      "birthday": birthdateController.text
    }).then((value) {
      print('Done');
      user=UserResponse.fromJson(value.data);
      AppSharedPreferences.saveEmail(user.user!.email!);
      AppSharedPreferences.saveToken(user.token!);
      AppSharedPreferences.saveName(user.user!.username!);
      AppSharedPreferences.saveBuild(user.user!.key!);
log=true;
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainPage(tabIndex: 1),));
      print(value);
      emit(SuccessSignUp());
    }).catchError((onError) {
      print('error');
      emit(ErrorSignUp());
    });
  }

    void login(context) {
    log=false;

      print('loading');
      emit(LoadingSignUp());
      DioHelper.postData(url: loginURL, data: {

        "email": emailController.text,
        "password": passwordController.text,


      }).then((value) {
        print('Done');
        user=UserResponse.fromJson(value.data);
        AppSharedPreferences.saveEmail(user.user!.email!);
        AppSharedPreferences.saveToken(user.token!);
        AppSharedPreferences.saveName(user.user!.username!);
        AppSharedPreferences.saveBuild(user.user!.key!);
        print(value);
        log=true;

          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainPage(tabIndex: 1),));




        emit(SuccessSignUp());
      }).catchError((onError) {
        AwesomeDialog(
          context: context,
          animType: AnimType.SCALE,
          dialogType: DialogType.ERROR,
          body: Center(child: Text(
            'البيانات المدخلة غير صحيحة',
            style: AppStyle.titleStyle.copyWith(
                color: Colors.blueGrey
            ),
          ),),

          btnOkOnPress: () {},

        )..show();
        print('error');
        emit(ErrorSignUp());
      });
    }
  }

