import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer';
class flexdemo extends StatefulWidget {
  const flexdemo({Key? key}) : super(key: key);

  @override
  State<flexdemo> createState() => _flexdemoState();
}

class _flexdemoState extends State<flexdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex Demo'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric( horizontal: 12, vertical: 12),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(

                children: [
                  Flexible(
                    flex: 2,
                    child: Image.network(
                      'https://daotaotester-18154-1fa76n8o6.sgp1.cdn.digitaloceanspaces.com/lib/image/banner2022flutter_xaCqkWqFFhe3xsQoY-original.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lập trình flutter',
                            style: TextStyle(fontSize: 24),

                          ),
                          Text(
                            'Thực chiến dự án app mobile 2022',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),

                  )
                ],

              ),
            ),
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                'Lập trình Android',
                                style: TextStyle(fontSize: 24),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Java + Kotlin',
                              textAlign: TextAlign.center,
                            )

                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Image.network(
                        'https://daotaotester-18154-1fa76n8o6.sgp1.cdn.digitaloceanspaces.com/lib/image/banner2022android-2_97DqRWCJzBogbBzuA-original.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),

                  ],
                ),
            ),
            Flexible(
              flex: 1,
             child: Row(
               children: [
                 Flexible(
                   flex: 3,
                   child: Image.network(
                     'https://daotaotester-18154-1fa76n8o6.sgp1.cdn.digitaloceanspaces.com/lib/image/bannerjavacore2_rnncQ4cwjHF5sFDmD-original.png',
                     fit: BoxFit.fill,

                   ),
                 ),
                 Flexible(
                   flex: 2,
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 12),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'Lập trình Java cơ bản',
                           style: TextStyle(fontSize: 24),
                           textAlign: TextAlign.center,
                         ),
                         Text(
                           'Cho người mới bắt đầu',
                           textAlign: TextAlign.center,

                         )
                       ],
                     ),

                   ),
                 )
               ],
             ),
            ),
          ],
        ),
      ),
    );
  }
}
