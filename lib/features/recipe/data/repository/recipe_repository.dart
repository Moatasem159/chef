import 'dart:async';
import 'dart:convert';
import 'package:chef/core/errors/error_handler.dart';
import 'package:chef/core/errors/firebase_exception_codes.dart';
import 'package:chef/core/extension/string_extension.dart';
import 'package:chef/core/helpers/firebase_result.dart';
import 'package:chef/core/helpers/network_info.dart';
import 'package:chef/features/recipe/data/models/prompt_data_model.dart';
import 'package:chef/features/recipe/data/models/recipe_response_model.dart';
import 'package:chef/features/recipe/data/services/firebase_service.dart';
import 'package:chef/features/recipe/data/services/gemini_service.dart';
import 'package:chef/features/recipe/data/services/local_recipe_service.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class RecipeRepository {
  final GeminiClient _geminiClient;
  final NetworkInfo _networkInfo;
  final RecipeFirebaseService _recipeFirebaseService;
  final LocalRecipeService _localRecipeService;

  RecipeRepository(
    this._geminiClient,
    this._networkInfo,
    this._recipeFirebaseService,
    this._localRecipeService,
  );

  Future<FirebaseResult<RecipeResponseModel>> generateContent({required PromptDataModel prompt}) async {
    if (await _networkInfo.isConnected) {
      try {
        final GenerateContentResponse? response =
            await _geminiClient.generateContent(prompt);
        if (response!.text!.trim() == ExceptionCodes.imageError) {
          return FirebaseResult.failure(
              ErrorHandler.handle(ExceptionCodes.imageError));
        } else if (response.text!.trim() == ExceptionCodes.noImageError) {
          return FirebaseResult.failure(
              ErrorHandler.handle(ExceptionCodes.noImageError));
        } else {
          final String validaJson = response.text!.cleanJson();
          final json = jsonDecode(validaJson);
          final RecipeResponseModel recipe = RecipeResponseModel.fromJson(json);
          return FirebaseResult.success(recipe);
        }
      } catch (error) {
        return FirebaseResult.failure(ErrorHandler.handle(error));
      }
    } else {
      return FirebaseResult.failure(
          ErrorHandler.handle(ExceptionCodes.internetConnection));
    }
  }

  Future<FirebaseResult<void>> saveRecipe(RecipeResponseModel recipe) async {
    if (await _networkInfo.isConnected) {
      try {
       await _recipeFirebaseService.saveRecipe(recipe);
       await _localRecipeService.cacheRecipe(recipe);
        return const FirebaseResult.success(null);
      } catch (e) {
        return FirebaseResult.failure(ErrorHandler.handle(e.toString()));
      }
    } else {
      return FirebaseResult.failure(
          ErrorHandler.handle(ExceptionCodes.internetConnection));
    }
  }

  Future<FirebaseResult<void>> removeRecipe(RecipeResponseModel recipe) async {
    if (await _networkInfo.isConnected) {
      try {
        await _recipeFirebaseService.removeRecipe(recipe);
        await _localRecipeService.removeRecipe(recipe);
        return const FirebaseResult.success(null);
      } catch (e) {
        return FirebaseResult.failure(
            ErrorHandler.handle(ExceptionCodes.internetConnection));
      }
    } else {
      return FirebaseResult.failure(
          ErrorHandler.handle(ExceptionCodes.internetConnection));
    }
  }
}