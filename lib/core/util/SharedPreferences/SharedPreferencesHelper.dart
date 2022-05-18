import '../../Constants/AppStrings.dart';
import 'SharedPreferencesProvider.dart';

class AppSharedPreferences {
  static bool? initialized;
  static SharedPreferencesProvider? _pref;
  static init() async {
    _pref = await SharedPreferencesProvider.getInstance();
  }

  //email
  static String get getEmail => _pref!.read(AppStrings.Email);
  static saveEmail(String value) => _pref!.save(AppStrings.Email, value);
  static bool get hasEmail => _pref!.contains(AppStrings.Email);
  static bool get removeEmail => _pref!.remove(AppStrings.Email);
  //token
  static String get getToken => _pref!.read(AppStrings.Token);
  static saveToken(String value) => _pref!.save(AppStrings.Token, value);
  static bool get hasToken => _pref!.contains(AppStrings.Token);
  static bool get removeToken => _pref!.remove(AppStrings.Token);
  //name
  static String get getName => _pref!.read(AppStrings.Name);
  static saveName(String value) => _pref!.save(AppStrings.Name, value);
  static bool get hasName => _pref!.contains(AppStrings.Name);
  static bool get removeName => _pref!.remove(AppStrings.Name);
  //numOfBuild
  static String get getBuild => _pref!.read(AppStrings.Build);
  static saveBuild(String value) => _pref!.save(AppStrings.Build, value);
  static bool get hasBuild => _pref!.contains(AppStrings.Build);
  static bool get removeBuild => _pref!.remove(AppStrings.Build);

  //clear
   static void signOut ()=>_pref!.clear();
}
