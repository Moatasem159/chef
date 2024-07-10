import 'package:chef/core/helpers/constants.dart';
import 'package:chef/features/auth/data/models/firebase_user.dart';
import 'package:hive_flutter/hive_flutter.dart';
class LocalFirebaseAuth{
  final Box<FirebaseUserModel> _userBox;
  LocalFirebaseAuth(this._userBox);
  /// cache [userData] in local database
  Future<void> cacheUser(FirebaseUserModel user)async{
     await _userBox.put(AppConstants.loggedInUser,user);
  }
}