import 'package:flutter/material.dart';

import '../assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrolOffset;

  CustomAppBar({Key? key, this.scrolOffset=0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.black.withOpacity((scrolOffset/ 350).clamp(0.0, 1.0).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            SizedBox(width: 12,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(title: 'TV Shows', onTap: () => print('TV Show')),
                  _AppBarButton(title: 'Movies', onTap: () => print('Movies')),
                  _AppBarButton(title: 'My List', onTap: () => print('My List')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _AppBarButton({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(title,
        style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,),),
    );
  }
}

