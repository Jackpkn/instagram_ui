import 'package:flutter/material.dart';

class AddStories extends StatefulWidget {
  const AddStories({super.key});

  @override
  State<AddStories> createState() => _AddStoriesState();
}

class _AddStoriesState extends State<AddStories> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Add Stories'),
      ),
    );
  }
}
