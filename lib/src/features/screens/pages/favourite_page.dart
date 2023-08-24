import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
                child: Icon(Icons.person_add_outlined),
              ),
              title: Text(
                'Follow request',
                style: TextStyle(fontSize: 9),
              ),
              subtitle: Text(
                'Approve or ignore request',
                style: TextStyle(fontSize: 7),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Today',
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            const ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
                child: Icon(Icons.person_add_outlined),
              ),
              title: Text(
                'Follow Jack(nd), abhishek, akhil and other to you know and see there post and videos',
                style: TextStyle(fontSize: 9),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Suggestion for you',
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            ListView.builder(
                itemCount: 9,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: ListTile(
                      leading: const CircleAvatar(
                        maxRadius: 30,
                        child: Icon(Icons.person_add_outlined),
                      ),
                      title: const Text(
                        'Jack nd',
                        style: TextStyle(fontSize: 10),
                      ),
                      subtitle: const Text(
                        'Leio messi',
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Container(
                        height: 25,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.blue,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Follow',
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
