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
        email: user.email!, password: user.password!);
  }

  /// if the registration is done successfully this function will
  /// save [userdata] into firebase
  Future<void> saveUserData({required FirebaseUserModel user}) async {
    return _firebaseFirestore
        .collection(FirebaseConstants.userCollection)
        .doc(user.uId)
        .set(user.toJson());
  }

  /// if the login is done successfully this function will
  /// get [userdata] from firebase
  Future<FirebaseUserModel> getUserData(
      {required FirebaseUserModel user}) async {
    final DocumentSnapshot<Map<String, dynamic>> response =
        await _firebaseFirestore
            .collection(FirebaseConstants.userCollection)
            .doc(user.uId)
            .get();
    return FirebaseUserModel.fromJson(response.data()!);
  }

  /// take [user] and login with [email] and [password]
  Future<UserCredential> loginWithEmailAndPassword(
      {required FirebaseUserModel user}) async {
    return await _firebaseAuth.signInWithEmailAndPassword(
        email: user.email!, password: user.password!);
  }
}