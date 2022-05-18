import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/feature/main/presentation/pages/homepage.dart';
import 'package:virtual_city/feature/splash/presentation/pages/splashScreen.dart';
import 'package:virtual_city/feature/usermangment/bloc/AuthCubit/auth_cubit.dart';
import 'package:virtual_city/feature/usermangment/presentation/pages/loginScreen.dart';

import 'core/API/dio_helper.dart';
import 'core/util/SharedPreferences/SharedPreferencesHelper.dart';
import 'feature/usermangment/presentation/pages/singupScreen.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();

  DioHelper.init();
  await AppSharedPreferences.init();
  runApp( MyApp());
}
class MyHttpOverrides extends HttpOverrides {
@override
HttpClient createHttpClient(SecurityContext? context) {
  return super.createHttpClient(context)
    ..badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
}
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AppCubit(),),


          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Sizer',
            theme: ThemeData.light(),
            home:  splashScreen(),
          ),
        );
      },
    );
  }
}
