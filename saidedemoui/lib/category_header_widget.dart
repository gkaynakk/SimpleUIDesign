import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'category.dart';

class CategoryHeaderWidget extends StatelessWidget {
  final Category category;

  const CategoryHeaderWidget({
    Key key,
    @required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      color: category.backgroundColor,
      borderRadius: BorderRadius.circular(15),
    );
    return GestureDetector(
      child: Container(
          height: 100.0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: boxDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(category.icon, color: Colors.white, size: 24),
                      const SizedBox(height: 4),
                      Text(
                        category.categoryName,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 5.0,
                  bottom: 0.0,
                  child: Icon(
                    Icons.slideshow,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
