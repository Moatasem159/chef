import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'create_recipe_state.dart';

class CreateRecipeCubit extends Cubit<CreateRecipeStates> {
  CreateRecipeCubit() : super(const CreateRecipeInitial());
  List<XFile> images = [XFile("")];
  List<String> chosenStableIngredients = [];
  List<String> chosenDietaryRestriction = [];
  List<String> chosenCuisines = [];
  final TextEditingController controller = TextEditingController();

  picImage(ImageSource source) async {
    emit(const PickImageLoadingState());
    ImagePicker picker = ImagePicker();
    XFile? xFile = await picker.pickImage(source: source);
    if (xFile != null) {
      images.add(xFile);
    }
    emit(const PickImageSuccessState());
  }

  removeImage(XFile file) {
    emit(const RemoveImageLoadingState());
    images.remove(file);
    emit(const RemoveImageSuccessState());
  }

  chooseStableIngredient((bool, String) value) {
    if (value.$1) {
      chosenStableIngredients.add(value.$2);
    } else {
      chosenStableIngredients.remove(value.$2);
    }
  }

  chooseDietaryRestriction((bool, String) value) {
    if (value.$1) {
      chosenDietaryRestriction.add(value.$2);
    } else {
      chosenDietaryRestriction.remove(value.$2);
    }
  }

  chooseCuisines((bool, String) value) {
    if (value.$1) {
      chosenCuisines.add(value.$2);
    } else {
      chosenCuisines.remove(value.$2);
    }
  }
}