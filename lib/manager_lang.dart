import 'package:multi_language/langcode.dart';
import 'package:multi_language/language_abstract.dart';

String lang(String id) {
  var content = ManagerLang().lang(id);
  return content??"???";
}


extension StringExtend on String{
  trans(){
    return ManagerLang().lang(this);
  }
}

class ManagerLang extends LanguageAbstract{

  static ManagerLang _singeton = ManagerLang._internal();

  ManagerLang._internal();

  factory ManagerLang(){
    return _singeton;
  }

  @override
  List<LangCode> getLangDef() {
    // TODO: implement getLangDef
    return [LangCode.vn, LangCode.en];
  }

  @override
  List<LangModel> getLangData() {
    // TODO: implement getLangData
    return [
      LangModel(R.HELLO, "Xin chào", vn: "Xin chào", en: "Hello"),
      LangModel("sminapo","Sminapo", vn: "Sminapo", en: "Sminapo"),
      LangModel("sminapo","Sminapo", vn: "Sminapo", en: "Sminapo"),
    ];
  }
}

class R {
  static String HELLO = "hello";
}
