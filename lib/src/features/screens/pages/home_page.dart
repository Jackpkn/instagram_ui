import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: SvgPicture.asset(
          'assets/svg/ic_instagram.svg',
          height: 34,
           color: Colors.white,
        ),
        leading: const Icon(Icons.camera_alt_outlined, color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send, color: Colors.white),
          )
        ],
      ),
      body: const IndexedStack(
        index: 0,
        children: [
          HomeWidget(),
          Center(
            child: Text('Jack nd'),
          ),
          Center(
            child: Text('Jack nd'),
          ),
        ],
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.pink,
                  height: 98,
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Text(
                        'jack',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.pink,
                  height: 98,
                  child: ListView.builder(
                      itemCount: 8,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (c, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.teal,
                                  ),
                                ),
                              ),
                              const Text(
                                'jack',
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 28,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Joshua',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            'Tokyo, japan',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 300,
                color: Colors.green,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      right: 9,
                      top: 9,
                      child: Container(
                        height: 22,
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black,
                        ),
                        child: const Text(
                          '1/3',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.chat_bubble_text,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        height: 6,
                        width: 6,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        height: 6,
                        width: 6,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Liked by craig_love and 44,686 others',
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: 9,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'joshua_I The game in japan was amazing and I want to share some photos',
                      style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 9,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
