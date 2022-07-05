import 'package:artikel/Models/article_model.dart';
import 'package:artikel/Services/article_service.dart';
import 'package:flutter/foundation.dart';

class ArticleProider2 extends ChangeNotifier{
  ArticleService _ArticleService = ArticleService();
  ArticleModel model = ArticleModel();

  tampilkanDetailArtikel({String? key}) async{
      model = await _ArticleService.detailArtikel(key: key);
      notifyListeners();
  }

  ArticleProider2({String? key}){
    tampilkanDetailArtikel(key: key);
  }

}