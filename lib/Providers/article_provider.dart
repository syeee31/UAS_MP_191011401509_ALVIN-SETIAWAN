import 'package:artikel/Models/article_model.dart';
import 'package:artikel/Services/article_service.dart';
import 'package:flutter/foundation.dart';

class ArticleProider extends ChangeNotifier{
  ArticleService _ArticleService = ArticleService();
  ArticleModel model = ArticleModel();

  tampilkanSemuaArtikel() async{
      model = await _ArticleService.getArtikel();
      notifyListeners();
  }

  tampilkanDetailArtikel({String? key}) async{
      model = await _ArticleService.detailArtikel(key: key);
      notifyListeners();
  }

  ArticleProider(){
    tampilkanSemuaArtikel();
  }

}