import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:ionicons/ionicons.dart';

class YoutubeClone extends StatefulWidget {
  const YoutubeClone({Key? key}) : super(key: key);

  @override
  State<YoutubeClone> createState() => _YoutubeCloneState();
}

class _YoutubeCloneState extends State<YoutubeClone> {
  bool menuExpand = false;
  bool menuExpandScreenEnable = true;

  @override
  void initState() {
    super.initState();

  }


  @override
  @mustCallSuper
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (kDebugMode) {
      print("Width ${MediaQuery.of(context).size.width}");
    }
  }

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var smallScreen = currentWidth > 175;
    var extraSmallScreen = currentWidth > 1075;
    var tabScreen = currentWidth > 769;

    var resTextField = currentWidth > 1170;
    var logoWidth = currentWidth > 875;
    var hideTextField = currentWidth > 657;
    var hideMenu = currentWidth > 805;
    var resTextFieldWidth = currentWidth - 1170;

    var expandedWidth = menuExpand ? 240.0 : 72.0;
    var menuExpandScreen = currentWidth > 1330;
    menuExpandScreenEnable
        ? Timer.run(() {
            setState(() {
              menuExpandScreenEnable
                  ? menuExpand = menuExpandScreen ? true : false
                  : true;
            });
          })
        : Container();

    var resButtonContainer = menuExpand
        ? 240.0
        : currentWidth > 800
            ? 720
            : 0;

    var resButtonList = currentWidth > 800 ? 140.0 : 72.0;

    var gridPaddingLarge = currentWidth > 1790;
    var paddingWidth = 1920 - currentWidth;
    var resPaddingWidth = paddingWidth / 1.1;
    var remPaddingWidth = 80 - resPaddingWidth;
    var gridPaddingSmall = remPaddingWidth > 30 ? remPaddingWidth : 30;
    var gridPaddingExSmall = currentWidth > 650;




    return Scaffold(
      backgroundColor: Colors.black12.withOpacity(0.04),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: menuExpand
                    ? 240.0
                    : resTextField
                        ? 213
                        : logoWidth
                            ? 211
                            : tabScreen
                                ? 195
                                : hideTextField
                                    ? 211
                                    : 211,
                padding: EdgeInsets.only(
                    left: hideMenu ? 16.0 : 07.5,
                    top: hideMenu ? 01.0 : 0.0,
                    bottom: 0.0),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:
                              const EdgeInsets.only(right: 11.0, bottom: 03.0),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 9.0, top: 8.0, right: 09.0, bottom: 09.0),
                            child: Icon(
                              FeatherIcons.menu,
                              color: Colors.black,
                              size: 22.0,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: hideMenu ? 0.0 : 2.0, bottom: 01.5),
                          child: Image.asset(
                            'assets/youtube_logo.jpg',
                            height: 30.0,
                            width: 100.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: menuExpand
                              ? 64.0
                              : resTextField
                                  ? 38
                                  : hideMenu
                                      ? 35
                                      : 40,
                          top: 06.0),
                      child: const Text(
                        'IN',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 09.0,
                          fontFamily: 'Roboto-Medium',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              hideTextField
                  ? Container(
                      margin: const EdgeInsets.only(right: 06.0),
                      padding:
                          EdgeInsets.only(right: resTextField ? 25.0 : 0.0),
                      child: Row(
                        children: [
                          Container(
                            height: 42.0,
                            width:
                            MediaQuery.of(context).size.width < 1100 ?
                            180.0 :
                            573.0,
                            alignment: Alignment.topLeft,
                            child: const TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 13.0, bottom: 10.0),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(02.0),
                                      bottomLeft: Radius.circular(02.0),
                                      topRight: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(02.0),
                                        bottomLeft: Radius.circular(02.0),
                                        topRight: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.black26, width: 01.0)),
                                  hintStyle: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Roboto-Medium',
                                    fontSize: 16.0,
                                  ),
                                  hintText: 'Search'),
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Tooltip(
                            message: 'Search',
                            textStyle: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                            child: InkWell(
                              onTap: () {
                                if (kDebugMode) {
                                  print('search');
                                }
                              },
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    left: BorderSide(
                                        color: Colors.black12, width: 1.0),
                                    top: BorderSide(
                                        color: Colors.black12, width: 1.0),
                                    right: BorderSide(
                                        color: Colors.black12, width: 1.0),
                                    bottom: BorderSide(
                                        color: Colors.black12, width: 1.0),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(0.0),
                                    bottomLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(02.0),
                                    bottomRight: Radius.circular(02.0),
                                  ),
                                ),
                                child: Container(
                                  height: 42.0,
                                  width: 42.0,
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    AntIcons.searchOutlined,
                                    color: Colors.black,
                                    size: 22.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 08.0,
                          ),
                          Tooltip(
                            message: 'Search with your voice',
                            textStyle: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                            child: InkWell(
                              onTap: () {
                                if (kDebugMode) {
                                  print("Search with your voice");
                                }
                              },
                              borderRadius: BorderRadius.circular(50.0),
                              highlightColor: Colors.black12.withOpacity(0.02),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.black12.withOpacity(0.03),
                                ),
                                child: Container(
                                  height: 42.0,
                                  width: 42.0,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(
                                      left: 08.0,
                                      top: 4.0,
                                      right: 08.0,
                                      bottom: 4.0),
                                  child: const Icon(
                                    Icons.mic,
                                    color: Colors.black,
                                    size: 22.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
              SizedBox(
                child: Row(
                  children: [
                    hideTextField
                        ? Container()
                        : Container(
                            padding: const EdgeInsets.only(right: 05.0),
                            child: Tooltip(
                              message: 'Search',
                              textStyle: const TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                              child: Container(
                                padding: const EdgeInsets.all(05.0),
                                child: const Icon(
                                  AntIcons.searchOutlined,
                                  size: 25.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),
                   hideTextField ?
                       Container() :
                   Container(
                     padding:  EdgeInsets.only(top: 2.0 , right: hideTextField ? 08.0:09.0 ),
                     child: Tooltip(
                       message: 'Search with your voice',
                       textStyle: const TextStyle(
                           fontSize: 12.0,
                           color: Colors.white,
                           fontWeight: FontWeight.normal),
                       child: Container(
                         padding: const EdgeInsets.all(05.0),
                         child: const Icon(
                           Icons.mic,
                           size: 25.0,
                           color: Colors.black87,
                         ),
                       ),
                     ),
                   ),
                    tabScreen
                        ? Tooltip(
                            message: 'Create',
                            child: Container(
                              padding:
                                   EdgeInsets.only(top: 2.0, right:hideTextField ? 08.0:09.0 ),
                              child: InkWell(
                                onTap: () {
                                  if (kDebugMode) {
                                    print("Create");
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(09.0),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 04.0, bottom: 1.0),
                                        child: Icon(
                                          FeatherIcons.plus,
                                          size: 12.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Icon(
                                        AntIcons.videoCameraOutlined,
                                        size: 24.0,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    Tooltip(
                      message: 'Youtube Apps',
                      child: InkWell(
                        onTap: () {
                          if (kDebugMode) {
                            print("Youtube Apps");
                          }
                        },
                          child: Stack(
                            alignment: Alignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(09.0),
                                child: Icon(
                                  Ionicons.apps_outline,
                                  size: 21.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                      ),
                    ),
                    Tooltip(
                      message: 'Notifications',
                      child: InkWell(
                        onTap: () {
                          if (kDebugMode) {
                            print("Notifications");
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(07.5),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(09.0),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    const Icon(
                                      Ionicons.notifications_outline,
                                      size: 26.0,
                                      color: Colors.black,
                                    ),
                                    ClipOval(

                                      child: Container(
                                        color: Colors.red,
                                        height: 14.0,
                                        padding: const EdgeInsets.only(left: 03.0 ,right: 03.0 , top: 2.0),
                                        child: const Text(
                                          '9+',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://media-exp1.licdn.com/dms/image/C5603AQGTL165WAf6pA/profile-displayphoto-shrink_800_800/0/1588192784666?e=1660176000&v=beta&t=kcQkELGyNe5iq8PH5nyq_JXR6REBDjEnY9PKPWP0tBU',
                        ),
                        radius: 17,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
