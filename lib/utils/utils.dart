import 'package:flutter/material.dart';
import 'package:flutter_toolbox/utils/camera_example.dart';
import 'package:flutter_toolbox/utils/dialogs.dart';
import 'http_fetch.dart';
import 'take_picture.dart';
import 'web_socket.dart';
import 'local_storage.dart';

void main() {
  runApp(
    UtilsScreen(),
  );
}

class UtilsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: const Text('Utils')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.backspace),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LocalStorageScreen()),
                    );
                  },
                  child: Text('Local Storage'),
                  color: Colors.blueGrey,
                  splashColor: Colors.blue,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TakePictureScreen(
                                camera: null,
                              )),
                    );
                  },
                  child: Text('Take Picture'),
                  color: Colors.yellowAccent,
                  splashColor: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DialogsScreen()),
                    );
                  },
                  child: Text('Dialogs'),
                  color: Colors.blueGrey,
                  splashColor: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CameraExampleHome()),
                    );
                  },
                  child: Text('Camera Example'),
                  color: Colors.white70,
                  splashColor: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WebSocketScreen()),
                    );
                  },
                  child: Text('Web Socket'),
                  color: Colors.redAccent,
                  splashColor: Colors.red,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HttpFetchScreen()),
                    );
                  },
                  child: Text('Http Fetch'),
                  color: Colors.amberAccent,
                  splashColor: Colors.amber,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
