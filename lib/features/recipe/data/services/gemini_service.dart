import 'package:chef/core/helpers/env.dart';
import 'package:chef/features/recipe/data/models/prompt_data_model.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiClient {
  Future<GenerateContentResponse?> generateContent(PromptDataModel prompt) async {
    if (prompt.images == null) {
      return null;
    } else {
      return await _generateContentFromMultiModal(prompt);
    }
  }
  Future<GenerateContentResponse> _generateContentFromMultiModal(PromptDataModel prompt) async {
    final GenerativeModel model = GenerativeModel(
      model: "gemini-1.5-flash",
      apiKey: Env.apiKey,

      generationConfig: GenerationConfig(
        temperature: 2,
        responseMimeType: 'application/json',
        topP:0.95,
      )
    );
    final TextPart mainText = TextPart(prompt.textInput);
    final Iterable<TextPart> additionalTextParts = prompt.additionalTextInputs!.map((t) => TextPart(t));
    final List<DataPart> imagesParts = <DataPart>[];
    for (var f in prompt.images!) {
      final bytes = await (f.readAsBytes());
      imagesParts.add(DataPart('image/jpeg', bytes));
    }

    final List<Content> input = [
      Content.multi([...imagesParts, mainText, ...additionalTextParts])
    ];
    return await model.generateContent(

      input,
      safetySettings: [
        SafetySetting(HarmCategory.harassment, HarmBlockThreshold.high),
        SafetySetting(HarmCategory.hateSpeech, HarmBlockThreshold.high),
      ],
    );
  }
}