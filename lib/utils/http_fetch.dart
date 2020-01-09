import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_toolbox/models/post.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  final url = 'https://jsonplaceholder.typicode.com/posts/1';
  final response =
      await http.get(url);

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    return Post.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

void main() => runApp(HttpFetchScreen());

class HttpFetchScreen extends StatefulWidget {
  HttpFetchScreen({Key key}) : super(key: key);

  @override
  _HttpFetchScreenState createState() => _HttpFetchScreenState();
}

class _HttpFetchScreenState extends State<HttpFetchScreen> {
  Future<Post> post;

  @override
  void initState() {
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          Center(child:
            Text('HTTP GET from: https://jsonplaceholder.typicode.com/posts/1'),
          ),
          Center(
          child: FutureBuilder<Post>(
            future: post,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text("Id: ${snapshot.data.id};\nTitle: ${snapshot.data.title};\nBody: ${snapshot.data.body};");
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          )),
        ],

        ),
      ),
    );
  }
}
