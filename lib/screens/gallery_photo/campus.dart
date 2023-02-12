import 'package:brain_school/constants.dart';
import 'package:flutter/material.dart';


class CampusGallery extends StatefulWidget {
  static String routeName = 'CampusGallery';

  @override
  CampusGalleryState createState() => CampusGalleryState();

}


class CampusGalleryState extends State<CampusGallery> {
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
                          'Campus ',
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
      body: Container(
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: kTopBorderRadius,
        ),

      ),
    );
  }
}