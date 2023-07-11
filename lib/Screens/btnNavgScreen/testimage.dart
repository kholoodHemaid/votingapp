// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'dart:io';
//
//
//
// class testimage extends StatefulWidget {
//   const testimage({Key? key}) : super(key: key);
//
//   @override
//   State<testimage> createState() => _testimageState();
// }
//
// class _testimageState extends State<testimage> {
//   var _image;
//
//   Future getImage(ImgSource source) async {
//     var image = await ImagePickerGC.pickImage(
//         enableCloseButton: true,
//         closeIcon: Icon(
//           Icons.close,
//           color: Colors.red,
//           size: 12,
//         ),
//         context: context,
//         source: source,
//         barrierDismissible: true,
//         cameraIcon: Icon(
//           Icons.camera_alt,
//           color: Colors.red,
//         ), //cameraIcon and galleryIcon can change. If no icon provided default icon will be present
//         cameraText: Text(
//           "From Camera",
//           style: TextStyle(color: Colors.red),
//         ),
//         galleryText: Text(
//           "From Gallery",
//           style: TextStyle(color: Colors.blue),
//         ));
//     setState(() {
//       _image = image;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Example Image Picker'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 width: 300,
//                 child: ElevatedButton(
//                   onPressed: () => getImage(ImgSource.Gallery),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.blue,
//                   ),
//                   child: Text(
//                     "From Gallery".toUpperCase(),
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 300,
//                 child: ElevatedButton(
//                   onPressed: () => getImage(ImgSource.Camera),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.deepPurple,
//                   ),
//                   child: Text(
//                     "From Camera".toUpperCase(),
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 300,
//                 child: ElevatedButton(
//                   onPressed: () => getImage(ImgSource.Both),
//                   style: ElevatedButton.styleFrom(
//                   ),
//                   child: Text(
//                     "Both".toUpperCase(),
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//               _image != null ? Image.file(File(_image.path)) : Container(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
