import 'package:facebook/models/posts.dart';
import 'package:facebook/models/stories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UsersStories> stories = [
    const UsersStories("", ""),
    const UsersStories(
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg",
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg"),
    const UsersStories(
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg",
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg"),
    const UsersStories(
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg",
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg"),
  ];

  List<UsersPosts> posts = [
    const UsersPosts(
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg",
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg",
        "Amr Khaled Marey"),
    const UsersPosts(
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg",
        "",
        "Amr Khaled Marey",
        "Software Engineering"),
    const UsersPosts(
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg",
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg",
        "Amr Khaled Marey"),
    const UsersPosts(
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg",
        "https://i.pinimg.com/564x/15/a4/35/15a4355d7b0039cbc51943f246bed34c.jpg",
        "Amr Khaled Marey"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey.withOpacity(0.1),
            title: const Text(
              "facebook",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.messenger,
                      color: Colors.white,
                    )),
              ),
            ],
            shape:
                Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.2))),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.grey.withOpacity(0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                            flex: 15,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "https://i.pinimg.com/474x/dc/ce/68/dcce688b496d95b6247a834867c58d7d.jpg"),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 70,
                            child: InkWell(
                              child: Container(
                                padding: const EdgeInsets.only(left: 20),
                                alignment: Alignment.centerLeft,
                                height: 50,
                                child: const Text(
                                  "What's on your mind?",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                            flex: 15,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Icon(
                                Icons.image,
                                color: Colors.green,
                              ),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.grey.withOpacity(0.1),
                    padding: const EdgeInsets.all(10),
                    height: 230,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        UsersStories story = stories[index];
                        return Container(
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border:
                                Border.all(color: Colors.grey.withOpacity(0.2)),
                            color: Colors.transparent,
                          ),
                          child: story.image == "" &&
                                  story.imageBackground == ""
                              ? Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                        "https://i.pinimg.com/474x/dc/ce/68/dcce688b496d95b6247a834867c58d7d.jpg",
                                        height: 115,
                                        width: double.infinity,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 25,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.add)),
                                      ),
                                    )
                                  ],
                                )
                              : Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                        story.image.toString(),
                                        height: 230,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.green),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 25,
                                        backgroundImage: NetworkImage(
                                            story.imageBackground.toString()),
                                      ),
                                    )
                                  ],
                                ),
                        );
                      },
                      separatorBuilder: (_, __) {
                        return const SizedBox(width: 10);
                      },
                      itemCount: stories.length,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.grey.withOpacity(0.1),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: posts.length,
                      itemBuilder: (_, index) {
                        UsersPosts post = posts[index];
                        return Column(
                          children: [
                            ListTile(
                              leading: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "/info",
                                      arguments: post);
                                },
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(post.image.toString()),
                                ),
                              ),
                              title: Text(
                                post.name.toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                DateTime.now().toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            post.imageBackground != null &&
                                    post.imageBackground!.isNotEmpty
                                ? Image.network(
                                    post.imageBackground.toString(),
                                    fit: BoxFit.cover,
                                  )
                                : Container(
                                    padding: const EdgeInsets.all(10),
                                    width: double.infinity,
                                    height: 200,
                                    alignment: Alignment.center,
                                    color: Colors.grey.withOpacity(0.2),
                                    child: Text(
                                      post.paragraph ?? '',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Row(
                                      children: [
                                        const Icon(
                                          Icons.thumb_up_alt_outlined,
                                          size: 30,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "like",
                                          style: TextStyle(
                                              color:
                                                  Colors.grey.withOpacity(0.6)),
                                        )
                                      ],
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Row(
                                      children: [
                                        const Icon(
                                          Icons.comment,
                                          size: 30,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "comment",
                                          style: TextStyle(
                                              color:
                                                  Colors.grey.withOpacity(0.6)),
                                        )
                                      ],
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Row(
                                      children: [
                                        const Icon(
                                          Icons.send,
                                          size: 30,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "send",
                                          style: TextStyle(
                                              color:
                                                  Colors.grey.withOpacity(0.6)),
                                        )
                                      ],
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Row(
                                      children: [
                                        const Icon(
                                          Icons.share,
                                          size: 30,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "share",
                                          style: TextStyle(
                                              color:
                                                  Colors.grey.withOpacity(0.6)),
                                        )
                                      ],
                                    )),
                              ],
                            )
                          ],
                        );
                      },
                      separatorBuilder: (_, __) {
                        return Container(
                            color: Colors.black,
                            child: const SizedBox(
                              height: 10,
                            ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            elevation: 0,
            color: Colors.transparent,
            child: Container(
              color: Colors.transparent,
              child: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home, color: Colors.white)),
                  Tab(icon: Icon(Icons.search, color: Colors.white)),
                  Tab(icon: Icon(Icons.notifications, color: Colors.white)),
                  Tab(icon: Icon(Icons.account_circle, color: Colors.white)),
                ],
                labelColor: Colors.black,
                indicatorColor: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
