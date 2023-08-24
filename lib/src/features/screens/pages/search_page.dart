import 'package:flutter/material.dart';

import '../../../common/widgets/container.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 5,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      margin: const EdgeInsets.all(9),
                      child: TextFormField(
                        enableInteractiveSelection: true,
                        // autofocus: true,
                        controller: controller,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          contentPadding: const EdgeInsets.all(12),
                          border: OutlineInputBorder(
                            borderSide: Divider.createBorderSide(context),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: Divider.createBorderSide(context),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: Divider.createBorderSide(context),
                          ),
                        ),
                      ),
                    ),
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
                      borderRadius: BorderRadius.circular(4),
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
    );
  }
}

// flutter firebase nodejs mongodb DSA