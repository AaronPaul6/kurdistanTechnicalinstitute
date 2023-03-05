import 'package:brain_school/constants.dart';
import 'package:flutter/material.dart';

class CarParkGallery extends StatefulWidget {
  static String routeName = 'CarParkGallery';

  @override
  CarParkGalleryState createState() => CarParkGalleryState();
}

class CarParkGalleryState extends State<CarParkGallery> {
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
              child: Center(
                child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 0, 15, 0),
                        child: Text(
                          'Car Park ',
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
        color: Colors.white,
        padding: EdgeInsets.all(15.0),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 18.0,
              mainAxisSpacing: 18.0,
              mainAxisExtent: 175.0

          ),
          itemBuilder: (BuildContext context, int index) {

            return MouseRegion(
              cursor: SystemMouseCursors.click,
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

              ),
            );
          },
        ),
      ),
    );
  }
}



List<String> images = [
  'assets/images/car1.jpg',
  'assets/images/car1.jpg',
  'assets/images/car1.jpg',
  'assets/images/car1.jpg',
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


