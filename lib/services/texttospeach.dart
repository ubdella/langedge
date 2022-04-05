import 'package:flutter/gestures.dart';
import 'package:flutter_tts/flutter_tts.dart';

FlutterTts flutterTts = FlutterTts();
speakJapanese(String string) async {
  flutterTts.setLanguage('ja-JP');
  flutterTts.setVoice({"name": "ja-jp-x-jab-network", "locale": "ja-JP"});
  flutterTts.setPitch(.9);
  // flutterTts.setSpeechRate(1);

  await flutterTts.speak(string);
  // print(await flutterTts.getVoices);
}

TapGestureRecognizer japaneseTapSpeaker(String text) {
  TapGestureRecognizer recognizer = TapGestureRecognizer()
    ..onTap = () => speakJapanese(text);

  return recognizer;
}
