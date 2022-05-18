import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:virtual_city/core/API/dio_helper.dart';
import 'package:virtual_city/feature/usermangment/data/UserModel/user_model.dart';

import '../../../../core/API/URL.dart';
import '../../../../core/util/SharedPreferences/SharedPreferencesHelper.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(Initial());

  static ContactCubit get(context) => BlocProvider.of(context);
  late UserResponse user;
  void contact({required String name,required String email,required String note}) {
    print('loading');
    emit(LoadingSendMessage());
    DioHelper.postData(url: sendMessage, data: {
      "email": email,
      "message": note,
    }).then((value) {
      print('Done');

      print(value);
      emit(SuccessSendMessage());
    }).catchError((onError) {
      print('error');
      emit(ErrorSendMessage());
    });
  }
  }

