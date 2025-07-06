import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_api/models/slider_model.dart';

class Sliders {
  List<SliderModel> sliders = [];

  Future<void> getSlider() async {
    String url ="https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=63d084821992496ea3726e04cadeddc0";
    var responce = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(responce.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          SliderModel sliderModel = SliderModel(
            title: element["title"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
            author: element["author"],
          );

          sliders.add(sliderModel);
        }
      });
    }
  }
}
