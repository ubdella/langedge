import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:langedge/custom/colors.dart';
import 'package:langedge/services/texttospeach.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class KanjiFlashCards extends StatefulWidget {
  List list;
  KanjiFlashCards(List recdList) {
    list = recdList;
  }

  @override
  _KanjiFlashCardsState createState() => _KanjiFlashCardsState(list);
}

class _KanjiFlashCardsState extends State<KanjiFlashCards> {
  List list;

  File jsonFile;
  Directory dir;
  String fileName = "savedkanjis.json";
  bool fileExists = false;
  Map<String, Map<String, dynamic>> fileContent;

  _KanjiFlashCardsState(List recdList) {
    list = recdList;
  }
  bool _switcher;
  @override
  void initState() {
    super.initState();

    _switcher = false;
    getApplicationDocumentsDirectory().then((Directory directory) {
      dir = directory;
      jsonFile = new File(dir.path + "/" + fileName);
      fileExists = jsonFile.existsSync();
      if (fileExists)
        this.setState(() =>
            fileContent = Map.from(json.decode(jsonFile.readAsStringSync())));
    });
  }

  void createFile(Map<String, Map<String, dynamic>> content, Directory dir,
      String fileName) {
    print("Creating file!");
    File file = new File(dir.path + "/" + fileName);
    file.createSync();
    fileExists = true;
    file.writeAsStringSync(json.encode(content));
  }

  void writeToFile(String key, Map<String, dynamic> value) {
    print("Writing to file!");
    Map<String, Map<String, dynamic>> content = {key: value};
    if (fileExists) {
      print("File exists");
      Map<String, Map<String, dynamic>> jsonFileContent =
          Map.from(json.decode(jsonFile.readAsStringSync()));
      jsonFileContent.addAll(content);
      jsonFile.writeAsStringSync(json.encode(jsonFileContent));
    } else {
      print("File does not exist!");
      createFile(content, dir, fileName);
    }
    this.setState(
        () => fileContent = Map.from(json.decode(jsonFile.readAsStringSync())));
    print(fileContent);
  }

  void remove(String key, Map<String, dynamic> value) {
    print("Writing to file!");
    Map<String, Map<String, dynamic>> content = {key: value};
    if (fileExists) {
      print("File exists");
      Map<String, Map<String, dynamic>> jsonFileContent =
          Map.from(json.decode(jsonFile.readAsStringSync()));
      jsonFileContent.removeWhere((k, v) {
        return k == key || v == value;
      });
      jsonFile.writeAsStringSync(json.encode(jsonFileContent));
    } else {
      print("File does not exist!");
      createFile(content, dir, fileName);
    }
    this.setState(
        () => fileContent = Map.from(json.decode(jsonFile.readAsStringSync())));
    print(fileContent);
  }

  void _switch() {
    setState(() {
      _switcher = !_switcher;
    });
  }

  void saveKanji(
      String kanji, Map<String, dynamic> content, BuildContext context) {
    setState(() {
      writeToFile(kanji, content);
    });

    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(
      backgroundColor: Colors.greenAccent[400],
      duration: Duration(milliseconds: 800),
      elevation: 10,
      content: Text("Kanji added to saved",
          style: TextStyle(
            color: Colors.black87,
            fontFamily: 'avenir',
          ),
          textAlign: TextAlign.center),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100), topRight: Radius.circular(100))),
    ));

    print(fileContent.toString());
  }

  void removeKanji(
      String kanji, Map<String, dynamic> content, BuildContext context) {
    setState(() {
      remove(kanji, content);
    });

    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(
      backgroundColor: Colors.redAccent[400],
      duration: Duration(milliseconds: 800),
      elevation: 10,
      content: Text("Kanji removed from saved",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'avenir',
          ),
          textAlign: TextAlign.center),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100), topRight: Radius.circular(100))),
    ));

    print(fileContent.toString());
  }

  @override
  Widget build(BuildContext context) {
    popUpKanji(BuildContext context, int index, List list) {
      return showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          builder: (builder) {
            return SingleChildScrollView(
              child: new Container(
                height: MediaQuery.of(context).size.height * 0.7,
                color: Colors
                    .transparent, //could change this to Color(0xFF737373),
                //so you don't have to change MaterialApp canvasColor
                child: new Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0))),
                    child: Container(
                      color: Colors.amber[50],
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          new Text(
                            list[index]["kanji"],
                            style: TextStyle(fontSize: 90, color: Colors.black),
                          ),
                          Divider(
                            height: 60,
                            color: Colors.amber,
                          ),
                          new Text(
                            "Kunyomi:",
                            style: TextStyle(color: Colors.amber),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            list[index]['kun_readings'].isEmpty
                                ? ""
                                : list[index]['kun_readings']
                                    .toString()
                                    .replaceAll("[", " ")
                                    .replaceAll("]", " "),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                            ),
                            softWrap: true,
                            maxLines: 3,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          new Text(
                            "Onyomi:",
                            style: TextStyle(color: Colors.amber),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            list[index]['on_readings'].isEmpty
                                ? ""
                                : list[index]['on_readings']
                                    .toString()
                                    .replaceAll("[", " ")
                                    .replaceAll("]", " "),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                            ),
                            softWrap: true,
                            maxLines: 3,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          new Text(
                            "Meanings:",
                            style: TextStyle(color: Colors.amber),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            list[index]['meanings'].isEmpty
                                ? ""
                                : list[index]['meanings']
                                    .toString()
                                    .replaceAll("[", " ")
                                    .replaceAll("]", " "),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                            ),
                            softWrap: true,
                            maxLines: 3,
                          )
                        ],
                      ),
                    )),
              ),
            );
          });
    }

    return Material(
      child: Scaffold(
        body: Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(gradient: flashcardBackgroundGradient),
            child: Stack(
              children: [
                _switcher == false
                    ? Center(
                        child: Container(
                        child: CarouselSlider.builder(
                            itemCount: list.length,
                            options: CarouselOptions(
                              // height: MediaQuery.of(context).size.height * 0.43,
                              autoPlay: false,
                              enlargeCenterPage: true,
                              viewportFraction: 0.9,
                              aspectRatio: 1,
                              initialPage: 0,
                            ),
                            itemBuilder: (BuildContext context, int index, _) {
                              return GestureDetector(
                                onLongPress: () =>
                                    popUpKanji(context, index, list),
                                onScaleStart: (details) =>
                                    popUpKanji(context, index, list),
                                child: FlipCard(
                                  flipOnTouch: true,
                                  speed: 400,
                                  onFlip: () {
                                    speakJapanese(list[index]['kanji']);
                                  },
                                  direction: FlipDirection.VERTICAL,
                                  front: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    elevation: 8,
                                    color: Colors.amber[50],
                                    child: Container(
                                      height: 280,
                                      width: 280,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: IconButton(
                                                icon: Icon(
                                                  Icons.info_outline,
                                                  color: Colors.black26,
                                                  size: 30,
                                                ),
                                                onPressed: () => popUpKanji(
                                                    context, index, list)),
                                            bottom: 10,
                                            left: 10,
                                          ),
                                          Center(
                                            child: Text(
                                              list[index]['kanji'],
                                              style: TextStyle(
                                                  fontSize: 100,
                                                  color: Colors.grey[800]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  back: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    color: Colors.grey[900],
                                    elevation: 5,
                                    child: Container(
                                      height: 280,
                                      width: 280,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: IconButton(
                                                icon: Icon(
                                                  Icons.delete_outline,
                                                  color: Colors.white38,
                                                  size: 30,
                                                ),
                                                onPressed: () => removeKanji(
                                                    list[index]['kanji'],
                                                    Map.from(list[index]),
                                                    context)),
                                            bottom: 10,
                                            left: 10,
                                          ),
                                          Positioned(
                                            child: IconButton(
                                                icon: Icon(
                                                  Icons
                                                      .bookmark_outline_rounded,
                                                  color: Colors.amber[400],
                                                  size: 30,
                                                ),
                                                onPressed: () => saveKanji(
                                                    list[index]['kanji'],
                                                    Map.from(list[index]),
                                                    context)),
                                            bottom: 10,
                                            right: 10,
                                          ),
                                          Center(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  child: Text(
                                                    list[index]['meanings']
                                                            [0] ??
                                                        "null",
                                                    style: TextStyle(
                                                        color: Colors.amber[50],
                                                        fontSize: 45),
                                                  ),
                                                  onDoubleTap: () => popUpKanji(
                                                      context, index, list),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ))
                    : Center(
                        child: Container(

                            // height: MediaQuery.of(context).size.height * 0.9,
                            // width: MediaQuery.of(context).size.width * 0.9,
                            child: ListView.builder(
                                itemCount: list.length ?? 0,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                      title: Material(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    color: Colors.amber[50],
                                    child: InkWell(
                                        splashColor: Colors.amber[500],
                                        onTap: () =>
                                            popUpKanji(context, index, list),
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                list[index]["kanji"],
                                                style: TextStyle(
                                                    fontSize: 50,
                                                    color: Colors.black),
                                              ),
                                              VerticalDivider(
                                                color: Colors.amber,
                                                width: 0,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    list[index]['kun_readings']
                                                                .length >
                                                            0
                                                        ? list[index]
                                                            ['kun_readings'][0]
                                                        : "",
                                                    style: TextStyle(
                                                        color: Colors.grey[600],
                                                        fontSize: 13),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    list[index]['on_readings']
                                                                .length >
                                                            0
                                                        ? list[index]
                                                            ['on_readings'][0]
                                                        : "",
                                                    style: TextStyle(
                                                        color: Colors.grey[700],
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    list[index]['meanings']
                                                                .length >
                                                            0
                                                        ? list[index]
                                                            ['meanings'][0]
                                                        : "",
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        color: Colors.grey[600],
                                                        fontSize: 22,
                                                        fontFamily: 'avenir'),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )),
                                  ));
                                })),
                      ),
                Positioned(
                    bottom: 30,
                    right: 20,
                    child: FloatingActionButton(
                        backgroundColor: Colors.amber[50],
                        child: Icon(
                          _switcher == false
                              ? Icons.format_list_bulleted_sharp
                              : Icons.view_carousel,
                          color: Colors.black,
                        ),
                        onPressed: _switch)),
              ],
            )),
      ),
    );
  }
}
