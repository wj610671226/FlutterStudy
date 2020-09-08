class RecommendModel {
  List<Recommendations> recommendations;

  RecommendModel({this.recommendations});

  RecommendModel.fromJson(Map<String, dynamic> json) {
    if (json['recommendations'] != null) {
      recommendations = new List<Recommendations>();
      json['recommendations'].forEach((v) {
        recommendations.add(new Recommendations.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recommendations != null) {
      data['recommendations'] =
          this.recommendations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Recommendations {
  ObjectInfo object;

  Recommendations(
      {this.object});

  Recommendations.fromJson(Map<String, dynamic> json) {
    object =
    json['object'] != null ? new ObjectInfo.fromJson(json['object']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.object != null) {
      data['object'] = this.object.toJson();
    }
    return data;
  }
}

class ObjectInfo {
  String identification;
  String title1st;
  String title2nd;
  String title3rd;
  String title4th;
  ImageInfo imageInfo;
  String url;
  String label;
  int width;
  int height;
  Author author;

  ObjectInfo(
      {this.identification,
        this.title1st,
        this.title2nd,
        this.title3rd,
        this.title4th,
        this.imageInfo,
        this.url,
        this.label,
        this.width,
        this.height,
        this.author,
        });

  ObjectInfo.fromJson(Map<String, dynamic> json) {
    identification = json['identification'];
    title1st = json['title_1st'];
    title2nd = json['title_2nd'];
    title3rd = json['title_3rd'];
    title4th = json['title_4th'];
    imageInfo = json['image'] != null ? new ImageInfo.fromJson(json['image']) : null;
    url = json['url'];
    label = json['label'];
    width = json['width'];
    height = json['height'];
    author =
    json['author'] != null ? new Author.fromJson(json['author']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['identification'] = this.identification;
    data['title_1st'] = this.title1st;
    data['title_2nd'] = this.title2nd;
    data['title_3rd'] = this.title3rd;
    data['title_4th'] = this.title4th;
    if (this.imageInfo != null) {
      data['image'] = this.imageInfo.toJson();
    }
    data['url'] = this.url;
    data['label'] = this.label;
    data['width'] = this.width;
    data['height'] = this.height;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    return data;
  }
}

class ImageInfo {
  String ident;
  int originalWidth;
  int originalHeight;
  int maxWidth;
  int maxHeight;
  String urlPattern;
  String url;

  ImageInfo(
      {this.ident,
        this.originalWidth,
        this.originalHeight,
        this.maxWidth,
        this.maxHeight,
        this.urlPattern,
      this.url});

  ImageInfo.fromJson(Map<String, dynamic> json) {
    ident = json['ident'];
    originalWidth = json['original_width'];
    originalHeight = json['original_height'];
    maxWidth = json['max_width'];
    maxHeight = json['max_height'];
    urlPattern = json['url_pattern'];
    if (urlPattern != null) {
      url = urlPattern.replaceAll("{width}", "300");
      url = url.replaceAll("{height}", "400");
      url = url.replaceAll("{format}", ident);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ident'] = this.ident;
    data['original_width'] = this.originalWidth;
    data['original_height'] = this.originalHeight;
    data['max_width'] = this.maxWidth;
    data['max_height'] = this.maxHeight;
    data['url_pattern'] = this.urlPattern;
    return data;
  }
}

class Author {
  ImageInfo image;
  String url;
  String iconUrl;

  Author({this.image, this.url, this.iconUrl});

  Author.fromJson(Map<String, dynamic> json) {
    image = json['image'] != null ? new ImageInfo.fromJson(json['image']) : null;
    url = json['url'];
    if (image.urlPattern != null) {
      iconUrl = image.urlPattern;
      iconUrl = iconUrl.replaceAll("{width}", "30");
      iconUrl = iconUrl.replaceAll("{height}", "30");
      iconUrl = iconUrl.replaceAll("{format}", image.ident);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    data['url'] = this.url;
    return data;
  }
}


