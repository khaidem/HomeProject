import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import './badgenotification.dart';

class NotificationPush extends StatefulWidget {
  const NotificationPush({Key? key}) : super(key: key);

  @override
  State<NotificationPush> createState() => _NotificationPushState();
}

class _NotificationPushState extends State<NotificationPush> {
  late int _totalNotification;

  @override
  void initState() {
    _totalNotification = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notify'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Firebase Push Notifications',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
