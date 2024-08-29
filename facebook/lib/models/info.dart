import 'package:facebook/models/posts.dart';
import 'package:flutter/material.dart';

enum Modes { dark, light }

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Modes selectedMode = Modes.light;
  Widget? info;
  @override
  Widget build(BuildContext context) {
    final UsersPosts post =
        ModalRoute.of(context)!.settings.arguments as UsersPosts;

    return SafeArea(
      child: Scaffold(
        backgroundColor:
            selectedMode == Modes.dark ? Colors.black : Colors.white,
        appBar: AppBar(
          backgroundColor:
              selectedMode == Modes.dark ? Colors.black : Colors.white,
          title: Text(post.name.toString(),
              style: TextStyle(
                  color: selectedMode == Modes.dark
                      ? Colors.white
                      : Colors.black)),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    if (selectedMode == Modes.light) {
                      selectedMode = Modes.dark;
                    } else {
                      selectedMode = Modes.light;
                    }
                  });
                },
                icon: Icon(
                  selectedMode == Modes.dark
                      ? Icons.light_mode
                      : Icons.dark_mode,
                  color:
                      selectedMode == Modes.dark ? Colors.white : Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
              child: Column(
            children: [
              info ?? const SizedBox.shrink(),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    setState(() {
                      info = Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          post.imageBackground != null &&
                                  post.imageBackground!.isNotEmpty
                              ? Image.network(
                                  post.imageBackground!,
                                  fit: BoxFit.cover,
                                  height: 300,
                                  width: 300,
                                )
                              : Container(
                                  height: 300,
                                  width: 400,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  color: Colors.grey.withOpacity(0.2),
                                  child: Text(
                                    post.paragraph.toString(),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 30),
                                  ),
                                ),
                          const SizedBox(height: 20),
                          post.image != null && post.image!.isNotEmpty
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(150),
                                  child: Image.network(
                                    post.image!,
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: 150,
                                  ),
                                )
                              : const SizedBox.shrink(),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      );
                    });
                  },
                  child: const Text(
                    "Show info",
                    style: TextStyle(color: Colors.white),
                  )),
              IconButton(
                style:const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.red)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:const  Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,))
            ],
          )),
        ),
      ),
    );
  }
}
