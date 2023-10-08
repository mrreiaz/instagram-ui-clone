import 'package:flutter/material.dart';
import 'package:instagramuiclone/util/account_tab.dart';
import 'package:instagramuiclone/util/person_tab.dart';
import 'package:instagramuiclone/util/shop_tab.dart';
import 'package:instagramuiclone/util/story_circle.dart';
import 'package:instagramuiclone/util/videos_tab.dart';

class UserAccount extends StatelessWidget {
  @override
  final List _people = [
    'MrReiaz',
    'akib',
    'afseeema',
    'sfrohan',
    'LM10',
    'CR7',
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // profile pic
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                // numbers of post and followers and following
                Column(
                  children: [
                    Text(
                      '240',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text('Posts'),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '240',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text('Flowers'),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '240',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text('Following'),
                  ],
                ),
              ],
            ),
            // name and bio
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MrReiaz',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'I am MrReiaz. I make website and apps. And somne time make youtube videos.'),
                  Text(
                    'www.youtube.com/c/mrreiaz',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            // actions btn
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Edit Profile',
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Ad Tools',
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Insides',
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // stories
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryCircle(text: "mrreiaz"),
                    StoryCircle(text: "mrreiaz"),
                    StoryCircle(text: "mrreiaz"),
                    StoryCircle(text: "mrreiaz"),
                    StoryCircle(text: "mrreiaz"),
                    StoryCircle(text: "mrreiaz"),
                  ],
                ),
              ),
            ),
            // tab bar
            const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.grid_3x3_outlined)),
                Tab(icon: Icon(Icons.video_call)),
                Tab(icon: Icon(Icons.shop)),
                Tab(icon: Icon(Icons.person)),
              ],
            ),
            // tab view
            Expanded(
              child: TabBarView(
                children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
