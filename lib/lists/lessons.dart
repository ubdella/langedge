import 'package:flutter/material.dart';
import 'package:langedge/lessons/lessons/basic_verbs.dart';
import 'package:langedge/lessons/lessons/conjugations.dart';
import 'package:langedge/lessons/lessons/feeling_japanese.dart';
import 'package:langedge/lessons/lessons/getting_literate.dart';
import 'package:langedge/lessons/lessons/making_sense.dart';
import 'package:langedge/lessons/lessons/more_particles.dart';

class Lesson {
  String name;
  int number;
  String description;
  Widget page;
  String tag;

  Lesson({this.name, this.number, this.description, this.page, this.tag});
}

List<Lesson> lessons = [
  Lesson(
      name: "Getting Literate",
      number: 1,
      description:
          "Learn how to read and write. Just memorise a few characters, and you can write your name! In this, you learn Hiragana, one of the scripts in which Japanese is written.",
      page: GettingLiterate(),
      tag: "getting literate"),
  Lesson(
      name: "Making Sense",
      number: 2,
      description:
          "In this lesson you get to learn the basics of making a sentence. You can start making sense. Unless you are a moron who can't make sense anyway. But I am positive you are not one. So ganbatte!",
      page: MakingSense(),
      tag: "making sense"),
  Lesson(
      name: "More Particles",
      number: 3,
      description:
          "Kind of an extension of the previous. More important particles and associated grammar patterns are introduced. It's like a season two so enjoy it like an emotionally immature fan.",
      page: MoreParticles(),
      tag: "more particles"),
  Lesson(
      name: "Basic Verbs",
      number: 4,
      description:
          "Verbs are the coolest part of Japanese! In this lesson you are introduced to their working and very basic conjugations of the simplest verbs. Don't say that though, no verb is too simple for you, simpleton!",
      page: BasicVerbs(),
      tag: "basic verbs"),
  Lesson(
      name: "Verb Conjugations",
      number: 5,
      description:
          "What is it that makes verbs so cool, then? It's their conjugations! The way you can mean so many different things by just manipulating a few parts of a verb is so easy it's almost magical! Get in already!",
      page: Conjugations(),
      tag: "verb conjugations"),
];
