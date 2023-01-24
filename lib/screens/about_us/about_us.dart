// TODO Implement this library.
import 'package:brain_school/constants.dart';
import 'package:brain_school/screens/my_profile/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';



class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);
  static String routeName = 'ABoutUs';

  @override
  _AboutUs createState() => _AboutUs();
  }
  
  class _AboutUs extends State<AboutUs> {
    final _unfocusNode = FocusNode();
    final scaffoldKey = GlobalKey<ScaffoldState>();

    @override
    void dispose() {
      _unfocusNode.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: false,
        title: Text(
          'About Us',
            style: FlutterFlowTheme.of(context).title2.override(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 22,
            ),
        ),
      ),
      ),

    throw UnimplementedError();
  }

