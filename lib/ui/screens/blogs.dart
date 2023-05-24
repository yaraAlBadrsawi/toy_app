import 'package:flutter/material.dart';

import '../../components/app_bar.dart';
import '../../util/const.dart';

class BlogsScreen extends StatefulWidget {
  const BlogsScreen({Key? key}) : super(key: key);

  @override
  State<BlogsScreen> createState() => _BlogsScreenState();
}

class _BlogsScreenState extends State<BlogsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'المدونة'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/details_screen');
              },
              child: Container(
                width: 408,
                height: 300,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/group_3056.png'),
                  ), // image:
                ),
              ),
            ),
            Container(
              width: 408,
              height: 300,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/group_3057.png'),
                ), // image:
              ),
            ),
            Container(
              width: 408,
              height: 300,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/group_3058.png'),
                ), // image:
              ),
            ),
          ],
        ),
      ),
    );
  }
}
