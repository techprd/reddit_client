// now we can replace the main body of the screen with the a list view
// this list view will contain the list of the subreddits that we want to display

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // begin building the list view using a list view builder
    // list view builder is a widget that builds a list of any other widget
    // we can easily give a list of texts or widgets to display
    // let build a list of subreddits texts
    final redditNames = ['flutterDev', 'popular', 'images', 'funny', 'aww'];
    final subreddits = ListView.builder(
      itemCount: redditNames.length,
      itemBuilder: (context, index) {
        // now lets make this listTile more useful
        // we can add a leading icon to the list tile
        // also we can add a trailing icon and colors
        // and onTap we can navigate to the subreddit screen but for now lets just print the subreddit name
        return ListTile(
          onTap: () => print('${redditNames[index]} tapped'),
          leading: const Icon(
            Icons.reddit_outlined,
            color: Colors.deepOrangeAccent,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          title: Text(redditNames[index]),
        );
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: subreddits,
      ),
    );
  }
}
