import 'dart:convert';
import 'package:trainingapp/models/article.dart';
import 'package:http/http.dart' as http;

class ApiController {
  Future<List<ArticleModel>> getNews() async {
    List<ArticleModel> news = [];

    String url = 'https://newsapi.org/v2/top-headlines?country=id&apiKey=356e1ff20580464486a362adbc9b7208';

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    
    jsonData['articles'].forEach((article) {
      ArticleModel articleModel = ArticleModel(
        author: article['author'],
        title: article['title'],
        description: article['description'],
        url: article['url'],
        urlToImage: article['urlToImage'],
        publishedAt: article['publishedAt'],
        content: article['content'],
      );
      news.add(articleModel);
    });

    return news;
  }
}