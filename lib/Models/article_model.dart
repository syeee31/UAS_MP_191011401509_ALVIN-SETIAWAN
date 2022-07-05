class ArticleModel{
  List<Results>? results;

  ArticleModel({this.results});

  ArticleModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      results = <Results>[];
      json['data'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

}

class Results {
  String? id;
  String? title;
  String? resume;
  String? description;
  String? created_at;
  String? image;

  Results(
      {this.id,
      this.title,
      this.resume,
      this.description,
      this.created_at,
      this.image});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    title = json['title'];
    resume = json['resume'];
    description = json['description'];
    created_at = json['created_at'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['resume'] = this.resume;
    data['description'] = this.description;
    data['created_at'] = this.created_at;
    data['image'] = this.image;
    return data;
  }
}