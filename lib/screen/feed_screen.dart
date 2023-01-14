import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_ui_clone/constants.dart';
import 'package:instagram_ui_clone/widgets/rounded_profile.dart';
import 'package:instagram_ui_clone/widgets/feed_card.dart';
import 'package:instagram_ui_clone/screen/app_screen.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  _FeedScreen createState() => _FeedScreen();
}

class _FeedScreen extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        // topbar
        SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SvgPicture.asset(
                  'ic_instagram.svg',
                  height: 24,
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/icons/add.svg',
                  height: 24,
                  width: 24,
                ),
                const SizedBox(width: 24),
                SvgPicture.asset(
                  'assets/icons/love.svg',
                  height: 24,
                  width: 24,
                ),
                const SizedBox(
                  width: 24,
                ),
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                  height: 24,
                  width: 24,
                )
              ],
            ),
          ),
        ),
        Container(
          height: 120,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              RoundedProfile(imageSource: 'assets/images/highlight-1.jpg'),
              const SizedBox(width: 10),
              RoundedProfile(imageSource: 'assets/images/highlight-2.jpg'),
              const SizedBox(width: 10),
              RoundedProfile(imageSource: 'assets/images/highlight-3.jpg'),
              const SizedBox(width: 10),
              RoundedProfile(imageSource: 'assets/images/highlight-1.jpg'),
              const SizedBox(width: 10),
              RoundedProfile(imageSource: 'assets/images/highlight-2.jpg'),
              const SizedBox(width: 10),
              RoundedProfile(imageSource: 'assets/images/highlight-3.jpg'),
            ],
          ),
        ),
        const Divider(height: 1),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              FeedCard(),
              FeedCard(),
              FeedCard(),
            ],
          ),
        )
      ])),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {},
        backgroundColor: white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: 'home',
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 24,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 24,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: 'reels',
            icon: SvgPicture.asset(
              'assets/icons/instagram-reels.svg',
              width: 24,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: 'reels',
            icon: Image.asset(
              'assets/icons/shopping-bag.png',
              width: 28,
              height: 28,
            ),
          ),
          BottomNavigationBarItem(
            label: 'reels',
            icon: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: black,
                    width: 2,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AppScreen()));
                  },
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/avatar.jpg',
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
