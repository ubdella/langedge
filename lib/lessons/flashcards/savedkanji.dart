import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:langedge/lessons/flashcards/kanjiflashcards.dart';
import 'package:path_provider/path_provider.dart';

class SavedKanjiFlashCards extends StatefulWidget {
  @override
  _SavedKanjiFlashCardsState createState() => _SavedKanjiFlashCardsState();
}

class _SavedKanjiFlashCardsState extends State<SavedKanjiFlashCards> {
  File jsonFile;
  Directory dir;
  String fileName = "savedkanjis.json";
  bool fileExists = false;
  Map<String, Map<String, dynamic>> fileContent;
  List list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApplicationDocumentsDirectory().then((Directory directory) {
      dir = directory;
      jsonFile = new File(dir.path + "/" + fileName);
      fileExists = jsonFile.existsSync();
      if (fileExists)
        this.setState(() =>
            fileContent = Map.from(json.decode(jsonFile.readAsStringSync())));
    });
  }

  @override
  Widget build(BuildContext context) {
    fileContent.forEach((key, value) {
      list.add(value);
    });
    return Scaffold(
      body: Center(
        child: Container(
            child: list.length == 0
                ? Container(
                    color: Colors.amber[50],
                    child: Center(
                      child: Text(
                        "But you deleted all the kanjis :(",
                        style: TextStyle(
                            color: Colors.black87, fontFamily: 'avenir'),
                      ),
                    ),
                  )
                : KanjiFlashCards(list)),
      ),
    );
  }
}
