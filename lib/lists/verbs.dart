class VerbStructure {
  String verb;
  String verbTranslation;
  String past;
  String pastTranslation;

  VerbStructure(
      {this.verb, this.past, this.verbTranslation, this.pastTranslation});
}

class Verb {
  VerbStructure keigo;
  VerbStructure douji;

  Verb({this.keigo, this.douji});
}

List verbs1 = <Verb>[
  Verb(
    douji: VerbStructure(
      verb: "いる",
      past: "いた",
      verbTranslation: "To be (for living objects)",
      pastTranslation: "",
    ),
    keigo: VerbStructure(
      verb: "います",
      past: "いました",
      verbTranslation: "",
      pastTranslation: "",
    ),
  ),
  Verb(
    douji: VerbStructure(
      verb: "ある",
      past: "あった",
      verbTranslation: "To be (for non living objects)",
      pastTranslation: "",
    ),
    keigo: VerbStructure(
      verb: "あります",
      past: "ありました",
      verbTranslation: "",
      pastTranslation: "",
    ),
  ),
  Verb(
    douji: VerbStructure(
      verb: "いく",
      past: "いった",
      verbTranslation: "To go",
      pastTranslation: "",
    ),
    keigo: VerbStructure(
      verb: "いきます",
      past: "いきました",
      verbTranslation: "",
      pastTranslation: "",
    ),
  ),
  Verb(
    douji: VerbStructure(
      verb: "みる",
      past: "みた",
      verbTranslation: "To see",
      pastTranslation: "",
    ),
    keigo: VerbStructure(
      verb: "みます",
      past: "みました",
      verbTranslation: "",
      pastTranslation: "",
    ),
  ),
  Verb(
    douji: VerbStructure(
      verb: "たべる",
      past: "たべた",
      verbTranslation: "To eat",
      pastTranslation: "",
    ),
    keigo: VerbStructure(
      verb: "たべます",
      past: "たべました",
      verbTranslation: "",
      pastTranslation: "",
    ),
  ),
];
