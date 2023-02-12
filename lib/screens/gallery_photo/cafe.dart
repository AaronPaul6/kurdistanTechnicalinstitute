import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/my_profile/my_profile.dart';
import 'package:fancy_avatar/fancy_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:brain_school/components/custom_buttons.dart';
import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/home_screen/home_screen.dart';
import 'package:sizer/sizer.dart';


class CafeGallery extends StatefulWidget {
  static String routeName = 'CafeGallery';

  @override
  CafeGalleryState createState() => CafeGalleryState();

}


class CafeGalleryState extends State<CafeGallery> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Center(
              child: Container(
                // decoration: BoxDecoration(
                //   border: Border.all(color:Colors.black38,width: 1.0, style: BorderStyle.solid)
                // ),
                child: Center(
                  child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 0, 15, 0),
                          child: Text(
                            'Cafeteria Gallery',
                            style:
                            TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Icon(Icons.image, size: 40.0,
                            color: Colors.white,
                          ),
                        )
                      ]
                  ),
                ),
              )
          )

          ,
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
        body:  Container(
          padding: EdgeInsets.all(15.0),
          child: GridView.builder(
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                mainAxisExtent: 155.0

            ),
            itemBuilder: (BuildContext context, int index) {

              return InkWell(
                child: Container(
                    width: 50.0,
                    height: 50.0,
                    child: GestureDetector(
                      onTap: () async {
                        await showDialog(context: context, builder: (_) => ImageDialog(images[index]));
                      },
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(images[index])
                      ),
                    ),
                 //   behavior: HitTestBehavior.opaque,
                   // cursor: SystemMouseCursors.click
                )
              );
            },
          ),
        ),
      );
  }
}

List<String> images = [
  'assets/images/caffe1.jpg',
  'assets/images/caffe2.jpg',
  'assets/images/caffe3.jpg',
  'assets/images/caffe4.jpg',
];

class ImageDialog extends StatelessWidget {
  String image_route = "";
  ImageDialog(image_route){
    this.image_route = image_route;
  }


  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage(this.image_route),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
