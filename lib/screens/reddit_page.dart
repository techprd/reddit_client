// here we are going to
// generate a custom flutter page widget where it takes a reddit page name
// and then builds a list of posts

import 'package:flutter/material.dart';

class RedditPage extends StatelessWidget {
  final String redditPageName;

  const RedditPage({Key? key, required this.redditPageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('r/$redditPageName'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            // build a material design card with a title and image in the center
            // card should have a title at top and a thumbnail image in the center
            return Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text('Post $index'),
                    subtitle: const Text('subtitle'),
                  ),
                  Image.network('https://picsum.photos/200/100'),
                  const SizedBox(height: 10),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
