import 'package:flutter/material.dart';
import 'package:netflixclone/models/content_model.dart';
import 'package:netflixclone/widgets/widgets.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;
  ContentHeader({required this.featuredContent});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(featuredContent.imageUrl),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 500,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
        Positioned(
          bottom: 110,
          child: SizedBox(
            width: 250,
            child: Image.asset(featuredContent.titleImageUrl as String),
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalIconButton(
                    icon: Icons.add,
                    title: 'List',
                    onTap: () => print('my list')),
                _playButton(),
                VerticalIconButton(
                    icon: Icons.info_outline,
                    title: 'Info',
                    onTap: () => print('my list')),
              ],
            ))
      ],
    );
  }
}

class _playButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
        padding: EdgeInsets.fromLTRB(15, 5, 20, 5),
        onPressed: () => print('play'),
        color: Colors.white,
        icon: Icon(
          Icons.play_arrow,
          size: 30,
        ),
        label: const Text(
          'Play',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ));
  }
}
