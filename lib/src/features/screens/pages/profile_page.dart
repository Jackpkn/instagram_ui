import 'package:flutter/material.dart';
import 'package:twitter_clone/src/common/widgets/container.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('jacob_w'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        child: const CircleAvatar(
                          maxRadius: 26,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '54',
                              ),
                              Text(
                                'Posts',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '834',
                              ),
                              Text(
                                'Followers',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '154',
                              ),
                              Text(
                                'Following',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'jacob_w \nDigital goodies designer',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                const Text(
                  'Everything is designed ...',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GlobalContainer(
                        borderRadius: 3,
                        height: 40,
                        // alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,

                        boxShape: BoxShape.rectangle,
                        borderColor: Colors.white,
                        borderWidth: 0.3,
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6.5,
                    ),
                    const GlobalContainer(
                      borderRadius: 3,
                      height: 40,
                      width: 40,
                      boxShape: BoxShape.rectangle,
                      borderColor: Colors.white,
                      borderWidth: 0.3,
                      child: Icon(
                        Icons.person_add,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(
                  thickness: 0.8,
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 149,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(
                              width: 0.1,
                              color: Colors.white,
                            ),
                          ),
                          child: const Column(
                            children: [],
                          ),
                        );
                      }),
                ),
                TabBar(
                  controller: _controller,
                  tabs: const [
                    Tab(
                      icon: Icon(Icons.grid_on),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.photo_camera_front_outlined,
                      ),
                    )
                  ],
                ),
                GridView.builder(
                  itemCount: 12,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1 / 2,
                    mainAxisExtent: 150,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 149,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.1,
                          color: Colors.white,
                        ),
                      ),
                      child: const Text('jack'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
