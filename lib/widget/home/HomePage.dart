import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //variabel 
  _getAllBlog() async{
    var output = await http.get(Uri.parse('http://192.168.42.2/blog-api-flutter/public/api/get-all-blog'));
    print(output.body);
  }

  void initState(){
    super.initState();
    _getAllBlog();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
