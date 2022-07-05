import 'package:artikel/Models/article_model.dart';
import 'package:dio/dio.dart';

class ArticleService{
  Future<ArticleModel> getArtikel() async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles');
    return ArticleModel.fromJson(response.data);
  }

  Future<ArticleModel> detailArtikel({String? key}) async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles/$key');
    return ArticleModel.fromJson(response.data);
  }

}