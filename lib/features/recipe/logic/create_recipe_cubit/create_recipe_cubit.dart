import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'create_recipe_state.dart';

class CreateRecipeCubit extends Cubit<CreateRecipeStates> {
  CreateRecipeCubit() : super(const CreateRecipeInitial());
  List<XFile> images = [XFile("")];

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
}