import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  final String? imgUrl, title, description, url;

  BlogTile(
      {@required this.imgUrl,
      @required this.title,
      @required this.description,
      @required this.url});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('di klik');
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              child: Image.network(imgUrl!),
              borderRadius: BorderRadius.circular(6),
            ),
            SizedBox(height: 8.0,),
            Text(title!),
            SizedBox(height: 8.0,),
            Text(description!),
          ],
        ),
      ),
    );
  }
}
