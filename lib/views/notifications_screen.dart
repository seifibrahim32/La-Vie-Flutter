import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
class NotificationScreen extends StatefulWidget{
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle : true,
        title: Text('Notifications',
          style: TextStyle(
            color: Colors.black,
          )
        ),
      ),
      body : Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
              radius:32,
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage(
                  'https://www.nme.com/wp-content/'
                      'uploads/2022/02/rihanna-2000x1270-1.jpg'
              ),
            ),
                SizedBox(width:16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Joy Arnold left 6 '
                        'comments on Your Post',
                        style:TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        )
                    ),
                    SizedBox(height:4),
                    Text('Yesterday at 11:42 PM',
                        style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  ]
                )
              ],
            ),
          ),
          Container(
            height:1,
            color : Colors.grey
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius:32,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      'https://www.nme.com/wp-content/'
                          'uploads/2022/02/rihanna-2000x1270-1.jpg'
                  ),
                ),
                SizedBox(width:16),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Dennis Nedry commented on '
                            'Isla Nublar SOC2 compliance report,    ',
                             softWrap: true,
                            maxLines: 13,
                            overflow: TextOverflow.ellipsis,
                            style:TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            )
                        ),
                        SizedBox(height:4),
                        Text('Yesterday at 11:42 PM',
                            style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 12,
                                fontWeight: FontWeight.w500
                            )
                        ),
                      ]
                  ),
                )
              ],
            ),
          ),
          Container(
              height:1,
              color : Colors.grey
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius:32,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      'https://www.nme.com/wp-content/'
                          'uploads/2022/02/rihanna-2000x1270-1.jpg'
                  ),
                ),
                SizedBox(width:16),
                Flexible(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('John Hammond created Isla Nublar SOC2 compliance report  ',
                            softWrap: true,
                            maxLines: 13,
                            overflow: TextOverflow.ellipsis,
                            style:TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            )
                        ),
                        SizedBox(height:4),
                        Text('Yesterday at 11:42 PM',
                            style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 12,
                                fontWeight: FontWeight.w500
                            )
                        ),
                      ]
                  ),
                )
              ],
            ),
          ),
          Container(
              height:1,
              color : Colors.grey
          ),
        ]
      )

    );
  }
}