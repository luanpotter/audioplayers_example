import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

AudioPlayer player = AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audioplayers Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Audioplayers Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final urls = [
  'https://luan.xyz/files/audio/ambient_c_motion.mp3',
  'https://luan.xyz/files/audio/nasa_on_a_mission.mp3',
  'http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio1xtra_mf_p',
];

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: Text('Set Url 0'),
                  onPressed: () => player.setUrl(urls[0]),
                ),
                FlatButton(
                  child: Text('Set Url 1'),
                  onPressed: () => player.setUrl(urls[1]),
                ),
                FlatButton(
                  child: Text('Set Url 2'),
                  onPressed: () => player.setUrl(urls[2]),
                ),
              ],
            ),
            FlatButton(
              child: Text('Play'),
              onPressed: () => player.play(urls[0]),
            ),
            FlatButton(
              child: Text('Resume'),
              onPressed: () => player.resume(),
            ),
            FlatButton(
              child: Text('Pause'),
              onPressed: () => player.pause(),
            ),
            FlatButton(
              child: Text('Stop'),
              onPressed: () => player.stop(),
            ),
          ],
        ),
      ),
    );
  }
}
