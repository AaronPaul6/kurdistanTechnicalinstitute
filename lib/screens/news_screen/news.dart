 import 'package:flutter/material.dart';

 class News extends StatefulWidget {
   static String routeName = 'News_page';

   @override
   _News createState() => _News();
 }

 class _News extends State<News> {
   final _formKey = GlobalKey<FormState>();

   @override
   void initState() {
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Color(0xFF345FB4),
         centerTitle: true,
         title: Text(
           'News',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
         leading: ElevatedButton.icon(
           onPressed: () => Navigator.of(context).pop(),
           icon: const Icon(Icons.arrow_left_sharp),
           label: const Text('Back'),
           style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Color(0xFF345FB4),
           ),
         ),

       ),
     );
   }

 }
