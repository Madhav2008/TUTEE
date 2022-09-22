import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  bool showFab = true;

  final TextEditingController _hi = TextEditingController();

  Widget appBarTitle = Text(
    'TUTEE',
    style: TextStyle(
      fontSize: 20,
      letterSpacing: 2,
    ),
  );

  Icon actionIcon = Icon(
    Icons.search,
    size: 26,
  );

  var query;
  late bool _IsSearching;
  String _searchText = "";

  _HomeScreenState() {
    _hi.addListener(() {
      _hi.value = query;
      if (_hi.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _IsSearching = true;
          _searchText = _hi.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _IsSearching = false;
    _tabController = TabController(
      vsync: this,
      initialIndex: 1,
      length: 4,
    );
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) =>
      DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.deepPurple[600],
                  automaticallyImplyLeading: false,
                  title: appBarTitle,
                  actions: [
                    IconButton(
                      icon: actionIcon,
                      onPressed: () {
                        setState(() {
                          if (actionIcon.icon == Icons.search) {
                            _handleSearchStart();
                            actionIcon = Icon(Icons.close);
                            appBarTitle = TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              autofocus: true,
                              controller: _hi,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 26,
                                  color: Colors.white,
                                ),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            );
                          } else {
                            _handleSearchEnd();
                            actionIcon = Icon(
                              Icons.search,
                              size: 26,
                            );
                            appBarTitle = Text(
                              'TUTEE',
                              style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 2,
                              ),
                            );
                          }
                        });
                      },
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        dividerColor: Colors.black,
                        iconTheme: IconThemeData(
                          color: Colors.white,
                        ),
                        textTheme: TextTheme().apply(),
                      ),
                      child: Container(),
                    ),
                  ],
                  floating: true,
                  pinned: true,
                  snap: true,
                  bottom: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.white,
                    indicatorWeight: 3,
                    labelColor: Colors.white,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.camera_alt),
                      ),
                      Tab(
                        text: 'chatsC',
                      ),
                      Tab(
                        text: 'statusC',
                      ),
                      Tab(
                        text: 'callsC',
                      ),
                    ],
                  ),
                  elevation: 20,
                  titleSpacing: 20,
                ),
              ];
            },
            body:
                //  StreamBuilder(
                //   stream: Connectivity().onConnectivityChanged,
                //   builder: (BuildContext context,
                //       AsyncSnapshot<ConnectivityResult> snapshot) {
                //     if (snapshot != null &&
                //         snapshot.hasData &&
                //         snapshot.data != ConnectivityResult.none) {
                //       return
                TabBarView(
              controller: _tabController,
              children: <Widget>[
                // CameraScreen(
                //   cameras: [],
                // ),
                // ChatsScreen(
                //     // sourceChat: widget.sourceChat,
                //     // chatModels: widget.chatModels,
                //     ),
                // StatusScreen(),
                // CallsScreen(
                //     // sourceChat: widget.sourceChat,
                //     // chatModels: widget.chatModels,
                //     ),
              ],
            ),
            // } else {
            //   return NoConnection(image: '../assets/images/1.png');
            // }
            // },
            // ),
          ),
          floatingActionButton: showFab
              ? FloatingActionButton(
                  backgroundColor: Colors.deepPurple[600],
                  child: Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (builder) => SelectContact(
                    //         // sourceChat: widget.sourceChat,
                    //         // chatModels: widget.chatModels,
                    //         ),
                    //   ),
                    // );
                  },
                )
              : null,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ),
      );

  void _handleSearchStart() {
    setState(() {
      _IsSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      _IsSearching = false;
    });
  }
}
