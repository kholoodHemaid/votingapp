// import 'package:flutter/material.dart';
// import 'package:image_picker_gallery_camera/image_picker_gallery_camera.dart';
//
// import 'package:votingapp/Screens/constant.dart';
// class verified_screen extends StatefulWidget {
//
//   const verified_screen({Key? key}) : super(key: key);
//
//   @override
//   State<verified_screen> createState() => _verified_screenState();
// }
//
// class _verified_screenState extends State<verified_screen> {
//   Future<void> _pickImage(BuildContext context) async {
//     final imagePicker = ImagePickerGC();
//     final pickedFile = await ImagePickerGC.pickImage(context: context, source: ImgSource.Camera);
//     if (pickedFile != null) {
//       // تنفيذ الإجراءات اللازمة عند اختيار الصورة
//       // مثلاً، يمكنك تخزين المسار الخاص بالصورة أو عرضها في واجهة المستخدم
//       print('تم اختيار الصورة: ${pickedFile.path}');
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: LayoutBuilder(
//           builder: (BuildContext context, BoxConstraints constraints) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(
//                     top: constraints.maxHeight * 0.04,
//                     left: constraints.maxWidth * 0.04,
//                   ),
//                   child: Text(
//                     'Verify Your Account',
//                     style: TextStyle(
//                       fontSize: constraints.maxHeight * 0.035,
//                       fontWeight: FontWeight.bold,
//                         color: Colors.blue
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Center(
//                     child: GestureDetector(
//                       // onTap: () {
//                       //   // إجراء يتم تنفيذه عند النقر على الأيقونة
//                       //   // يمكنك تنفيذ رفع الصورة هنا
//                       // },
//                       onTap: () => _pickImage(context),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             width: constraints.maxWidth * 0.25,
//                             height: constraints.maxWidth * 0.25,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.rectangle,
//
//                               border: Border.all(
//                                 color: kTextLightColor,
//                                 style: BorderStyle.solid,
//                                 width: constraints.maxWidth * 0.001,
//                               ),
//                             ),
//                             child: Icon(
//                               Icons.add_a_photo,
//                               size: constraints.maxWidth * 0.1,
//                             ),
//                           ),
//                           SizedBox(height: constraints.maxHeight * 0.02),
//                           Text(
//                             'Upload your image',
//                             style: TextStyle(
//                               fontSize: constraints.maxHeight * 0.030,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//
//     );
//   }
// }
