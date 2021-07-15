import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_laravel/model/blogdata.dart';
import 'package:flutter_laravel/services/blogservice.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BlogService _blogService = BlogService();

  Future<List<BlogData>> _getAllBlog() async {
    var result = await _blogService.getAllBlog();
    List<BlogData>? _list = <BlogData>[];
    if (result != null) {
      var blogPosts;
      blogPosts = json.decode(result.body);
      blogPosts.forEach((blogPost) {
        var model = BlogData();
        model.title = blogPost['title'];
        model.details = blogPost['description'];
        model.featured_image_url = blogPost['featured_image_url'];
        model.category = blogPost['category_id'];
        model.createdAt = blogPost['created_at'];
        setState(() {
          _list.add(model);
        });
      });
    }

    return _list;
  }

  @override
  void initState() {
    _getAllBlog();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Blog App',
        ),
      ),
      body: FutureBuilder(
        future: _getAllBlog(),
        builder:
            (BuildContext context, AsyncSnapshot<List<BlogData>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(
                    8.0,
                  ),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(
                            6.0,
                          ),
                          child: Text(
                            snapshot.data![index].title.toString(),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Container(
                child: Text('Loading ..'),
              ),
            );
          }
        },
      ),
    );
  }
}
