import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: HtmlWidget(
          // the first parameter (`html`) is required
          '''
  <h3>Heading</h3>
  <p class="foo">
    A paragraph with <strong>strong</strong>, <em>emphasized</em>
    and <span style="color: red">colored</span> text.
  </p>
  <source id="youtube" src="https://www.youtube.com/embed/0CtV6x5N8ic"></source>
  <p id="youtube"> a </p>
  ''',

          customStylesBuilder: (element) {
            if (element.classes.contains('foo')) {
              return {'color': 'red'};
            }
            return null;
          },

          customWidgetBuilder: (element) {
            if (element.id == 'youtube') {
              print("aaa");
              String a = element.outerHtml;
              print(a);
              YoutubePlayerController _controller = YoutubePlayerController(
                initialVideoId: '0CtV6x5N8ic',
                params: YoutubePlayerParams(
                  showControls: true,
                  showFullscreenButton: true,
                ),
              );
              return YoutubePlayerIFrame(
                controller: _controller,
              );
            }
            return null;
          },

          textStyle: TextStyle(fontSize: 14),

          webView: true,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
