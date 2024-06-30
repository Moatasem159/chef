import 'package:firebase_auth/firebase_auth.dart';
class FirebaseRegisterException extends FirebaseException{
   FirebaseRegisterException({required super.plugin,required super.code,required super.message});
}

class FirebaseLoginException extends FirebaseException{
  FirebaseLoginException({required super.plugin,required super.code,required super.message});
}