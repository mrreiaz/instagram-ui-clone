import 'package:flutter/material.dart';
import 'package:instagramuiclone/util/story_circle.dart';
import 'package:instagramuiclone/util/user_post.dart';

class UserHome extends StatelessWidget {
  final List _people = [
    'MrReiaz',
    'akib',
    'afseeema',
    'sfrohan',
    'LM10',
    'CR7',
  ];
  final List _caption = [
    'ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ',
    'ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not',
    ' only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with',
    'the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Instagram",
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          //Story
          //Posts
          children: [
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _people.length,
                  itemBuilder: (context, index) {
                    return StoryCircle(
                      text: _people[index],
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: _people.length,
              itemBuilder: (context, index) {
                return UserPost(
                  name: _people[index],
                  caption: _caption[index],
                );
              },
            )),
          ],
        ));
  }
}
