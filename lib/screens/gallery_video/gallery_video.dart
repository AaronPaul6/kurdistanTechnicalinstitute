import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/my_profile/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:brain_school/components/custom_buttons.dart';
import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/home_screen/home_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class VideoGallery extends StatefulWidget {
  static String routeName = 'VideoGallery';

  @override
  VideoGalleryState createState() => VideoGalleryState();
}

class VideoGalleryState extends State<VideoGallery> {
  late VideoPlayerController _controller;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    _controller = VideoPlayerController.asset('assets/videos/KTIVideos.mp4')
      ..initialize().then((_){
        setState(() {});
      });
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

// done this
//child(
// ElevatedButton.icon(onPressed: onPressed, icon: icon, label: label)
        //)
      ),

      body:Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueGrey,width: 3.3),
          ),
          width: 350,
          height: 350,
          child: _controller.value.isInitialized
              ? VideoPlayer(_controller)
              : Container(),
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow), onPressed: () {
        setState(() {
          _controller.value.isPlaying ? _controller.pause() : _controller.play();
        });
      },),
      // bottomSheet: Container(
      //   color: Colors.blue.withOpacity(0.50),
      //   height: 100,
      //   child: Row(
      //     children: [
      //       Text(
      //         'developer: Aland ',
      //         style: TextStyle(
      //           color: Colors.black,
      //         ),
      //       )
      //     ],
      //   ),
      // ),
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
