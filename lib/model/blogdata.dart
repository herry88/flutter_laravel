class BlogData {
  //addblog
  int? id;
  String? title;
  String? details;
  // ignore: non_constant_identifier_names
  String? featured_image_url;
  int? category;
  String? createdAt;

  BlogData({
    this.id,
    this.title,
    this.details,
    // ignore: non_constant_identifier_names
    this.featured_image_url,
    this.category,
    this.createdAt,
  });

  factory BlogData.fromJson(Map<String, dynamic> json) {
    return BlogData(
      id: json['id'],
      title: json['title'],
      featured_image_url: json['featured_image_url'],
      details: json['details'],
      category: json['category'],
      createdAt: json['createdAt'],
    );
  }
}
