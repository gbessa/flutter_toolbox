import 'package:flutter/material.dart';
import 'package:flutter_toolbox/configs/AppColors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
    this.margin = const EdgeInsets.symmetric(horizontal: 28),
  }) : super(key: key);

  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      margin: margin,
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.search),
          SizedBox(width: 13),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search tools among some usefull utils, screens and widgets...",
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: AppColors.grey,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          RaisedButton(
            onPressed: search(),
            child: Text('Search'),
            color: Colors.blueGrey,
            splashColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

search() {}