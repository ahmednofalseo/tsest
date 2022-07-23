import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.menu),
        title: Center(
          child: const Text(
            "facebook",
            style: TextStyle(
              color: Color.fromARGB(255, 77, 94, 227),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        // لانشاء مسافة بتحديد الجهة فقط
        padding: const EdgeInsets.only(
          left: 50,
          right: 50,
          top: 150,
          bottom: 100,
        ),

        child: Container(
          // ignore: sort_child_properties_last
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(11.0),


              // Stack  لاخذ العناصر فوق بعض

              child: Stack(
                children: [

                  //  Positioned لتحريك العناصر بالجهات الاربعة

                  Positioned(
                    child: Container(
                      color: Colors.amber,
                      width: 100,
                      height: 100,
                    ),
                    bottom: 0,
                  ),
                  Positioned(
                    child: Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                    ),
                    bottom: 0,
                    right: 0,
                  ),
                  Positioned(
                    child: Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                    ),
                    right: 0,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),

                        // Center لوسطنة العصر داخل محتواه 

                   Center(
                      child: Container(
                        color: Colors.yellow,
                        width: 120,
                        height: 120,
                      ),
                    ),
                ],
              ),
            ),
          ),

          // لانشاء عرض بمساحة الصفحة
          width: double.infinity,
          height: 300,
          color: Colors.black,
        ),
      ),
    );
  }
}
