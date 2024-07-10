import 'package:chef/core/helpers/firebase_constants.dart';
import 'package:chef/features/recipe/data/models/recipe_response_model.dart';
import 'package:chef/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RecipeFirebaseService {
  final FirebaseFirestore _firebaseFirestore;

  RecipeFirebaseService(this._firebaseFirestore);
  /// take [recipe] save in user recipes collection in firebase
  Future<void> saveRecipe(RecipeResponseModel recipe) async {
     await _firebaseFirestore
        .collection(FirebaseConstants.userCollection)
        .doc(loggedInUser!.uId)
        .collection(FirebaseConstants.userRecipesCollection)
        .doc(recipe.id)
        .set(recipe.toJson());
  }
  /// remove [recipe] from user recipes collection in firebase
  Future<void> removeRecipe(RecipeResponseModel recipe) async {
    await _firebaseFirestore
        .collection(FirebaseConstants.userCollection)
        .doc(loggedInUser!.uId)
        .collection(FirebaseConstants.userRecipesCollection)
        .doc(recipe.id)
        .delete();
  }
}