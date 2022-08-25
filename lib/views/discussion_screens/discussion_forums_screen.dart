import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class DiscussionScreen extends StatefulWidget {
  const DiscussionScreen({super.key});

  @override
  State<DiscussionScreen> createState() => _DiscussionScreenState();
}

class _DiscussionScreenState extends State<DiscussionScreen>
    with SingleTickerProviderStateMixin {
  bool isAllForumsClicked = true;

  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints
            .widthConstraints()
            .biggest
            .width >= 1366) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
                backgroundColor: Colors.white,
                body: Column(children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 84.0, right: 118, top: 32, bottom: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/splashscreen.png',
                            width: 121,
                            height: 27,
                          ),
                          const SizedBox(width: 133),
                          const Text('Home',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600)),
                          const Spacer(),
                          const Text('Shop',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600)),
                          const Spacer(),
                          const Text('Blog',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600)),
                          const Spacer(),
                          const Text('About',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600)),
                          const Spacer(),
                          const Text('Community',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600)),
                          const Spacer(),
                          Image.asset(
                            'assets/cart_icon.png',
                            color: Colors.black,
                          ),
                          const SizedBox(width: 28),
                          const Icon(
                            Icons.notifications_outlined,
                          ),
                          const SizedBox(width: 23),
                          const CircleAvatar(
                            radius: 13,
                            backgroundColor: Colors.black,
                            backgroundImage:
                            NetworkImage('https://www.nme.com/wp-content/'
                                'uploads/2022/02/rihanna-2000x1270-1.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 29),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: Colors.white,
                    child: const Text('Forums',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w600)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 118.0),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom:
                                BorderSide(color: Colors.grey, width: 2.0),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            TabBar(
                              labelPadding:
                              const EdgeInsets.only(left: 10, right: 0),
                              unselectedLabelColor: const Color(0xFF8A8A8A),
                              labelColor: const Color(0xff1abc00),
                              indicator: const UnderlineTabIndicator(
                                borderSide: BorderSide(
                                  color: Colors.greenAccent,
                                  strokeAlign: StrokeAlign.outside,
                                  width: 2.0,
                                ),
                              ),
                              isScrollable: true,
                              indicatorPadding:
                              const EdgeInsets.symmetric(horizontal: 20.0),
                              tabs: [
                                SizedBox(
                                  width: 162,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Tab(
                                        child: Text(
                                          'All forums',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 190,
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: const [
                                        Tab(
                                          child: Text(
                                            'My forums',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ]),
                                ),
                              ],
                              controller: _tabController,
                              indicatorSize: TabBarIndicatorSize.tab,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey[100],
                      padding: const EdgeInsets.symmetric(horizontal: 118.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 52),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: SingleChildScrollView(
                                    child: ListView.separated(
                                      physics: const BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              right: 26.0, left: 29.0),
                                          child: SingleChildScrollView(
                                            child: ListView.separated(
                                              physics:
                                              const BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: 6,
                                              separatorBuilder: (ctx, index) {
                                                return const SizedBox(
                                                    height: 30);
                                              },
                                              itemBuilder: (ctx, index) {
                                                return Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        offset:
                                                        Offset(12, 16),
                                                        spreadRadius: 1,
                                                        color:
                                                        Color(0x1A5A5959),
                                                        blurRadius: 12.0,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Column(children: [
                                                    Column(
                                                      children: [
                                                        const SizedBox(
                                                            height: 15.35),
                                                        Row(children: [
                                                          const SizedBox(
                                                              width: 14.25),
                                                          const CircleAvatar(
                                                            radius: 21,
                                                          ),
                                                          const SizedBox(
                                                              width: 11.88),
                                                          Column(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: const [
                                                              Text(
                                                                  'Mayar Mohamed',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                      13,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w700)),
                                                              Text(
                                                                  'a month ago',
                                                                  style: TextStyle(
                                                                      color: Color(
                                                                          0xD6979797),
                                                                      fontSize:
                                                                      11,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w400)),
                                                            ],
                                                          )
                                                        ]),
                                                        const SizedBox(
                                                            height: 23.61),
                                                        Row(children: const [
                                                          SizedBox(
                                                              width: 8.31),
                                                          Text(
                                                              'How to plant correctly ',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .greenAccent,
                                                                  fontSize:
                                                                  15,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w700))
                                                        ]),
                                                        const SizedBox(
                                                            height: 25.97),
                                                        Row(children: const [
                                                          SizedBox(
                                                              width: 13.06),
                                                          Flexible(
                                                            child: Text(
                                                                'It is a long established'
                                                                    ' fact '
                                                                    'that a reader will be distracted',
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                maxLines: 3,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .grey,
                                                                    fontSize:
                                                                    13,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                          )
                                                        ]),
                                                        const SizedBox(
                                                            height: 23),
                                                      ],
                                                    ),
                                                    const Image(
                                                        image: NetworkImage(
                                                            'https://www.nme.com/wp-'
                                                                'content/uploads/2022/02/rihanna-2000x1270-1.jpg')),
                                                    const SizedBox(
                                                        height: 16),
                                                    Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          const SizedBox(
                                                              width: 61),
                                                          Image.asset(
                                                              'assets/likes_button.png',
                                                              width: 17.18,
                                                              height: 16.01),
                                                          const SizedBox(
                                                              width: 2),
                                                          const Text(
                                                              '0 Likes',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                                  fontSize:
                                                                  13)),
                                                          const SizedBox(
                                                              width: 44.01),
                                                          const Text(
                                                              '2 Replies',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                                  fontSize:
                                                                  13)),
                                                        ])
                                                  ]),
                                                );
                                              },
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return const SizedBox(height: 11);
                                      },
                                      itemCount: 10,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 1.0),
                                            child: TextField(
                                              onSubmitted: (searchedString) {},
                                              textAlign: TextAlign.start,
                                              maxLines: 1,
                                              style:
                                              const TextStyle(fontSize: 17),
                                              textAlignVertical:
                                              TextAlignVertical.center,
                                              decoration: const InputDecoration(
                                                filled: true,
                                                prefixIcon: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 22.23,
                                                      right: 17.54),
                                                  child: Icon(Icons.search,
                                                      color: Color.fromARGB(
                                                        255,
                                                        55,
                                                        205,
                                                        115,
                                                      )),
                                                ),
                                                border: OutlineInputBorder(
                                                    gapPadding: 17,
                                                    borderSide: BorderSide.none,
                                                    borderRadius:
                                                    BorderRadius.all(
                                                        Radius.circular(
                                                            10))),
                                                fillColor: Colors.white,
                                                hintText: 'Search Forum',
                                                contentPadding:
                                                EdgeInsets.all(0.0),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 37),
                                          MaterialButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      10.0)),
                                              elevation: 0,
                                              minWidth: double.infinity,
                                              height: 51,
                                              color: Colors.greenAccent,
                                              onPressed: () {},
                                              child: const Text('Search',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16))),
                                          const SizedBox(height: 37),
                                          MaterialButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      10.0),
                                                  side: const BorderSide(
                                                      color: Colors.green)),
                                              elevation: 0,
                                              minWidth: double.infinity,
                                              height: 51,
                                              color: Colors.white,
                                              onPressed: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (_) {
                                                      return AlertDialog(
                                                        title: const Text(
                                                            'Create a New Post',
                                                            style: TextStyle(
                                                                fontSize: 19,
                                                                color: Colors
                                                                    .greenAccent)),
                                                        content: Expanded(
                                                          child: Column(
                                                              children: [
                                                                Column(
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      const Text(
                                                                          'Title',
                                                                          style: TextStyle(
                                                                              color: Color(
                                                                                  0xff6f6f6f),
                                                                              fontSize: 14)),
                                                                      const SizedBox(
                                                                          height:
                                                                          10),
                                                                      TextField(
                                                                        autofocus:
                                                                        false,
                                                                        style: const TextStyle(
                                                                            fontSize:
                                                                            15.0,
                                                                            color:
                                                                            Color(
                                                                                0xFFbdc6cf)),
                                                                        decoration:
                                                                        InputDecoration(
                                                                          filled:
                                                                          true,
                                                                          fillColor:
                                                                          Colors
                                                                              .white,
                                                                          hintText:
                                                                          'Title',
                                                                          contentPadding: const EdgeInsets
                                                                              .only(
                                                                              left: 14.0,
                                                                              bottom: 12.0,
                                                                              top: 0.0),
                                                                          focusedBorder:
                                                                          OutlineInputBorder(
                                                                            borderSide:
                                                                            const BorderSide(
                                                                                color: Color(
                                                                                    0xFF939393)),
                                                                            borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                5.0),
                                                                          ),
                                                                          disabledBorder:
                                                                          UnderlineInputBorder(
                                                                            borderSide:
                                                                            const BorderSide(
                                                                                color: Colors
                                                                                    .white),
                                                                            borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                25.7),
                                                                          ),
                                                                          enabledBorder:
                                                                          OutlineInputBorder(
                                                                            borderSide:
                                                                            const BorderSide(
                                                                                color: Color(
                                                                                    0xFF939393)),
                                                                            borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                5.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                          height:
                                                                          78),
                                                                      Column(
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                          children: [
                                                                            const Text(
                                                                                'Description',
                                                                                style: TextStyle(
                                                                                    color: Color(
                                                                                        0xff6f6f6f),
                                                                                    fontSize: 14)),
                                                                            const SizedBox(
                                                                                height: 10),
                                                                            SizedBox(
                                                                              width: 1047,
                                                                              child: TextField(
                                                                                autofocus: false,
                                                                                maxLength: 19,
                                                                                maxLines: 10,
                                                                                style: const TextStyle(
                                                                                    fontSize: 15.0,
                                                                                    color: Color(
                                                                                        0xFFbdc6cf)),
                                                                                decoration: InputDecoration(
                                                                                  filled: true,
                                                                                  fillColor: Colors
                                                                                      .white,
                                                                                  hintText: 'Description',
                                                                                  contentPadding: const EdgeInsets
                                                                                      .only(
                                                                                      left: 14.0,
                                                                                      top: 10,
                                                                                      bottom: 12.0),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: const BorderSide(
                                                                                        color: Color(
                                                                                            0xFF939393)),
                                                                                    borderRadius: BorderRadius
                                                                                        .circular(
                                                                                        5.0),
                                                                                  ),
                                                                                  disabledBorder: UnderlineInputBorder(
                                                                                    borderSide: const BorderSide(
                                                                                        color: Colors
                                                                                            .white),
                                                                                    borderRadius: BorderRadius
                                                                                        .circular(
                                                                                        25.7),
                                                                                  ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: const BorderSide(
                                                                                        color: Color(
                                                                                            0xFF939393)),
                                                                                    borderRadius: BorderRadius
                                                                                        .circular(
                                                                                        5.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ]),
                                                                      Stack(
                                                                        children: [
                                                                          TextField(
                                                                            enabled:
                                                                            false,
                                                                            textAlign:
                                                                            TextAlign
                                                                                .start,
                                                                            maxLines:
                                                                            1,
                                                                            style:
                                                                            const TextStyle(
                                                                                fontSize: 17),
                                                                            decoration:
                                                                            InputDecoration(
                                                                              filled: true,
                                                                              fillColor: Colors
                                                                                  .white,
                                                                              hintText: 'No Image Selected',
                                                                              hintStyle: const TextStyle(
                                                                                  fontSize: 16,
                                                                                  fontWeight: FontWeight
                                                                                      .w500),
                                                                              disabledBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius
                                                                                    .circular(
                                                                                    10),
                                                                                borderSide: const BorderSide(
                                                                                    color: Color(
                                                                                        0x70000000),
                                                                                    width: 1.0),
                                                                              ),
                                                                              contentPadding: const EdgeInsets
                                                                                  .only(
                                                                                  left: 12.0,
                                                                                  right: 81),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            Alignment
                                                                                .centerRight,
                                                                            child:
                                                                            MaterialButton(
                                                                              minWidth: 10,
                                                                              shape: const RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius
                                                                                      .all(
                                                                                      Radius
                                                                                          .circular(
                                                                                          10.0))),
                                                                              color: Colors
                                                                                  .greenAccent,
                                                                              elevation: 0,
                                                                              onPressed: () {},
                                                                              child: const Padding(
                                                                                padding: EdgeInsets
                                                                                    .only(
                                                                                    top: 10.0,
                                                                                    bottom: 14,
                                                                                    left: 10,
                                                                                    right: 10),
                                                                                child: Text(
                                                                                    'Update',
                                                                                    style: TextStyle(
                                                                                        fontSize: 18,
                                                                                        color: Colors
                                                                                            .white,
                                                                                        fontWeight: FontWeight
                                                                                            .w500)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ]),
                                                                const SizedBox(
                                                                    height: 28),
                                                                Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      MaterialButton(
                                                                          shape: RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius
                                                                                  .circular(
                                                                                  10.0),
                                                                              side: const BorderSide(
                                                                                  color: Colors
                                                                                      .greenAccent)),
                                                                          elevation:
                                                                          0,
                                                                          minWidth:
                                                                          112,
                                                                          height:
                                                                          51,
                                                                          color: Colors
                                                                              .white,
                                                                          child: const Text(
                                                                              'Cancel',
                                                                              style: TextStyle(
                                                                                  color: Colors
                                                                                      .greenAccent)),
                                                                          onPressed: () =>
                                                                              Navigator
                                                                                  .pop(
                                                                                  context)),
                                                                      const SizedBox(
                                                                          width:
                                                                          10),
                                                                      MaterialButton(
                                                                          shape: RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius
                                                                                  .circular(
                                                                                  10.0)),
                                                                          elevation:
                                                                          0,
                                                                          minWidth:
                                                                          112,
                                                                          height:
                                                                          51,
                                                                          color: Colors
                                                                              .greenAccent,
                                                                          child: const Text(
                                                                              'Post',
                                                                              style: TextStyle(
                                                                                  color: Colors
                                                                                      .white)),
                                                                          onPressed: () =>
                                                                              Navigator
                                                                                  .pop(
                                                                                  context))
                                                                    ])
                                                              ]),
                                                        ),
                                                      );
                                                    });
                                              },
                                              child: const Text('Create post',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 16))),
                                          const SizedBox(height: 54),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 52),
                        ],
                      ),
                    ),
                  ),
                ])),
          );
        }
        // Mobile version
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              toolbarHeight: 100,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {},
              ),
              centerTitle: true,
              title: const Text('Discussion Forums',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 21,
                  )),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 26),
              child: Column(children: [
                SizedBox(
                  height: 53.16,
                  child: TextField(
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: const TextStyle(fontSize: 17),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 29.13, right: 17.54),
                        child: Icon(Icons.search,
                            color: Color.fromARGB(
                              255,
                              151,
                              151,
                              151,
                            )),
                      ),
                      border: const OutlineInputBorder(
                          gapPadding: 17,
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      fillColor:
                      Theme
                          .of(context)
                          .inputDecorationTheme
                          .fillColor,
                      hintText: 'Search',
                      contentPadding: const EdgeInsets.all(0.0),
                    ),
                  ),
                ),
                const SizedBox(height: 15.59),
                Row(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isAllForumsClicked = true;
                      });
                    },
                    child: Container(
                        width: 111,
                        height: 26,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isAllForumsClicked
                                    ? Colors.green
                                    : Colors.grey),
                            color: isAllForumsClicked
                                ? Colors.green
                                : Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text('All forums',
                              style: TextStyle(
                                  color: isAllForumsClicked
                                      ? Colors.white
                                      : Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        )),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isAllForumsClicked = false;
                      });
                    },
                    child: Container(
                        width: 111,
                        height: 26,
                        decoration: BoxDecoration(
                            color: !isAllForumsClicked
                                ? Colors.green
                                : Colors.white,
                            border: Border.all(
                              color: !isAllForumsClicked
                                  ? Colors.grey
                                  : Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text('My forums',
                                style: TextStyle(
                                    color: !isAllForumsClicked
                                        ? Colors.white
                                        : Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14)))),
                  )
                ]),
                const SizedBox(height: 30),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    primary: true,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      separatorBuilder: (ctx, index) {
                        return const SizedBox(height: 30);
                      },
                      itemBuilder: (ctx, index) {
                        return Expanded(
                          child: Column(children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black.withOpacity(0.1),
                                    width: 1,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(0, 1),
                                        spreadRadius: 1,
                                        blurRadius: 1)
                                  ]),
                              child: Column(
                                children: [
                                  const SizedBox(height: 15.35),
                                  Row(children: [
                                    const SizedBox(width: 14.25),
                                    const CircleAvatar(
                                      radius: 21,
                                    ),
                                    const SizedBox(width: 11.88),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: const [
                                        Text('Mayar Mohamed',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700)),
                                        Text('a month ago',
                                            style: TextStyle(
                                                color: Color(0xD6979797),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    )
                                  ]),
                                  const SizedBox(height: 23.61),
                                  Row(children: const [
                                    SizedBox(width: 8.31),
                                    Text('How to plant correctly ',
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700))
                                  ]),
                                  const SizedBox(height: 25.97),
                                  Row(children: const [
                                    SizedBox(width: 13.06),
                                    Flexible(
                                      child: Text(
                                          'It is a long established'
                                              ' fact '
                                              'that a reader will be distracted',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400)),
                                    )
                                  ]),
                                  const SizedBox(height: 23),
                                ],
                              ),
                            ),
                            const Image(
                                image: NetworkImage(
                                    'https://www.nme.com/wp-content/uploads/20'
                                        '22/02/rihanna-2000x1270-1.jpg')),
                            const SizedBox(height: 16),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/likes_button.png',
                                      width: 17.18, height: 16.01),
                                  const SizedBox(width: 2),
                                  const Text('0 Likes',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13)),
                                  const SizedBox(width: 44.01),
                                  const Text('2 Replies',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13)),
                                ])
                          ]),
                        );
                      },
                    ),
                  ),
                )
              ]),
            ));
      },
    );
  }
}
