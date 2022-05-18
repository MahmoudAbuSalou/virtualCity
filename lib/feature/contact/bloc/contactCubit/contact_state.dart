part of 'contact_cubit.dart';

@immutable
abstract class ContactState {}

class Initial extends ContactState {}
class LoadingSendMessage extends ContactState {}
class SuccessSendMessage extends ContactState {}
class ErrorSendMessage extends ContactState {}
