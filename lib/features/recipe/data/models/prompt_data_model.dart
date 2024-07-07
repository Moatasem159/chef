import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
part "prompt_data_model.freezed.dart";

@freezed
class PromptDataModel with _$PromptDataModel {
  const factory PromptDataModel({
    required String textInput,
    List<XFile>? images,
    List<String>? additionalTextInputs,
    List<String>? selectedBasicIngredients,
    List<String>? selectedCuisines,
    List<String>? selectedDietaryRestrictions,
  }) = _PromptDataModel;
}