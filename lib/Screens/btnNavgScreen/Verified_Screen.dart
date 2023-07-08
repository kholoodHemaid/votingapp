import 'package:flutter/material.dart';
class verified_screen extends StatefulWidget {
  const verified_screen({Key? key}) : super(key: key);

  @override
  State<verified_screen> createState() => _verified_screenState();
}

class _verified_screenState extends State<verified_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.04,
                    left: constraints.maxWidth * 0.04,
                  ),
                  child: Text(
                    'Verify Your Account',
                    style: TextStyle(
                      fontSize: constraints.maxHeight * 0.035,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        // إجراء يتم تنفيذه عند النقر على الأيقونة
                        // يمكنك تنفيذ رفع الصورة هنا
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: constraints.maxWidth * 0.25,
                            height: constraints.maxWidth * 0.25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: constraints.maxWidth * 0.01,
                              ),
                            ),
                            child: Icon(
                              Icons.add_a_photo,
                              size: constraints.maxWidth * 0.1,
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.02),
                          Text(
                            'Upload your image',
                            style: TextStyle(
                              fontSize: constraints.maxHeight * 0.025,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    
    );
  }
}
