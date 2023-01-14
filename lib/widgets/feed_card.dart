import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class FeedCard extends StatelessWidget {
  const FeedCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 80,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: secondaryColor,
                              ),
                              borderRadius: BorderRadius.circular(74),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/avatar.jpg',
                                height: 45,
                                width: 45,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('_anaaanov')
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        'icons/dots.svg',
                        height: 20,
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/avatar.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'icons/love.svg',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                            'icons/chat.svg',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                            'icons/paper-plane.svg',
                            width: 24,
                            height: 24,
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            'icons/bookmark.svg',
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      child: Text(
                        '19 suka',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      child: Text(
                        'Esse occaecat elit reprehenderit labore ex duis. Proident adipisicing ullamco proident enim. Labore irure nulla enim ad ad ea id culpa. Officia sint est cupidatat consequat non cupidatat adipisicing est sunt voluptate. Ut cupidatat mollit voluptate non eiusmod non ullamco consectetur ea amet est do. Esse nostrud voluptate deserunt tempor minim qui consectetur.',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
