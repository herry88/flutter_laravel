import 'package:flutter_laravel/config/appconfig.dart';

class BlogService {
  late Config _config;

  BlogService() {
    _config = Config();
  }

  getAllBlog() async {
    return await _config.httpGet('get-all-blog');
  }
}
