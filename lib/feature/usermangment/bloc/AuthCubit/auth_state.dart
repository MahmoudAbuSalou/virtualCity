part of 'auth_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}
class LoadingSignUp extends AppState {}
class SuccessSignUp extends AppState {}
class ErrorSignUp extends AppState {}
