import 'package:flutter/material.dart';
import 'package:music_flutter/data/repository/repository.dart'; // Đảm bảo đường dẫn này đúng

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var repository = DefaultRepository(); // Đảm bảo DefaultRepository được thiết lập đúng
  var songs = await repository.loadData();
  if (songs != null) {
    for (var song in songs) {
      debugPrint(song.toString());
    }
  } else {
    debugPrint('No songs loaded.');
  }

  runApp(const MusicApp()); // Chạy ứng dụng Flutter
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Music App'),
        ),
        body: Center(
          child: Text('Check console for song data'),
        ),
      ),
    );
  }
}
