import 'package:brain_school/constants.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoGallery extends StatefulWidget {
  static String routeName = 'VideoGallery';

  @override
  VideoGalleryState createState() => VideoGalleryState();
}

class VideoGalleryState extends State<VideoGallery> {
  final _formKey = GlobalKey<FormState>();
  final videoURL = "https://www.youtube.com/watch?v=pWNgZodebnU";

  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(initialVideoId: videoId!,
    flags: const YoutubePlayerFlags()
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //when user taps anywhere on the screen, keyboard hides
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Video Gallery',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_left_sharp),
          label: const Text('Back'),
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            elevation: 0,
          ),
        ),

      ),

      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YoutubePlayer(controller: _controller,
          showVideoProgressIndicator: true,
          )
        ],
      )



    );
    // // TODO: implement build
    // throw UnimplementedError();
  }
}

TextFormField buildEmailField() {
  return TextFormField(
    textAlign: TextAlign.start,
    keyboardType: TextInputType.emailAddress,
    style: kInputTextStyle,
    decoration: InputDecoration(
      labelText: 'Mobile Number/Email',
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
    validator: (value) {
      //for validation
      RegExp regExp = new RegExp(emailPattern);
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      } else if (!regExp.hasMatch(value)) {
        return 'Please enter a valid email address';
      }
    },
  );
}
