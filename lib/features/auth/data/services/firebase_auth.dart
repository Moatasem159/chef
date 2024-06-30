import 'package:chef/core/helpers/firebase_constants.dart';
import 'package:chef/features/auth/data/models/firebase_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseAuthClient {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseAuthClient(this._firebaseAuth, this._firebaseFirestore);

  /// take [user] and register new account in firebase with [email] and [password]
  Future<UserCredential> registerWithEmailAndPassword(
      {required FirebaseUserModel user}) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
        email: user.email, password: user.password);
  }

  /// if the registration is done successfully this function will
  /// save [userdata] into firebase
  Future<void> saveUserData({required FirebaseUserModel user}) async {
    return _firebaseFirestore
        .collection(FirebaseConstants.userCollection)
        .doc(user.uId)
        .set(user.toJson());
  }
}