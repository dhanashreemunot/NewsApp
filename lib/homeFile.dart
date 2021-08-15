
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[Text("News",style: TextStyle(color: Colors.black)),
          Text("App",style: TextStyle(color: Colors.red),)
          ]
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: myhomescreen(),
      backgroundColor: Colors.white,
    );
  }
}

class myhomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        country(
            page: 'I', url: 'https://wallpaperaccess.com/full/4455652.jpg',tag:'logo'),
        country(
            page: 'U', url: 'https://www.nationsonline.org/gallery/USA/US-Capitol-Washington.jpg',tag:'logo1'),
      ],
    );
  }
}

class country extends StatelessWidget {
  String page;
  String url;
  String tag;
  country({@required this.page, @required this.url,@required this.tag});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, page);
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Hero(tag:tag,child: Image.network(url)),
      ),
    );
  }
}
