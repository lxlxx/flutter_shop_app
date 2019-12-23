import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'image/categories/icons8-cat-96.png',
            image_caption: 'Cat',
          ),
          Category(
            image_location: 'image/categories/icons8-clown-fish-96.png',
            image_caption: 'Fish',
          ),
          Category(
            image_location: 'image/categories/icons8-pug-96.png',
            image_caption: 'Pug',
          ),
          Category(
            image_location: 'image/categories/icons8-turtle-96.png',
            image_caption: 'Turtle',
          ),
          Category(
            image_location: 'image/categories/icons8-cat-96.png',
            image_caption: 'Cat',
          ),
          Category(
            image_location: 'image/categories/icons8-clown-fish-96.png',
            image_caption: 'Fish',
          ),
          Category(
            image_location: 'image/categories/icons8-pug-96.png',
            image_caption: 'Pug',
          ),
          Category(
            image_location: 'image/categories/icons8-turtle-96.png',
            image_caption: 'Turtle',
          ),
        ],
      ),
    );
  }
}


class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          color: Colors.green,
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 60.0,
            ),
            subtitle: Container(
              color: Colors.lightBlueAccent,
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),

          ),
        ),
      ),
    );
  }
}
