import 'package:flutter/material.dart';

void main() {
  runApp(MyCard());
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage("img/logo.png"),
            ),
            Text(
              'Herry Prasetyo',
              style: TextStyle(
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
            Text(
              'Selamat Idul fitri 1442 H, Mohon Maaf Lahir Dan Batin',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 30.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '081381820076',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 30.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'herry081288@gmail.com',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
