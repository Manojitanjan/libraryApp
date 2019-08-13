import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  Widget _buildContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildAvatar(),
          _buildInfo(),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 110.0,
      height: 110.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white30),
      ),
      margin: const EdgeInsets.only(top: 32.0, left: 16.0),
      padding: const EdgeInsets.all(3.0),
      child: ClipOval(
        child: Image.asset('assets/kelaniya.png'),
      ),
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'About',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Library, University of Kelaniya',
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            color: Colors.white.withOpacity(0.85),
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            width: 225.0,
            height: 1.0,
          ),
          Text(
            '   The University of Kelaniya Library was Crystallized around the Vidyalankara Pirivena Collection with the elevation of the Pirivena to a fully pledged University status in 1959. Throughout its existence, the library was located in several places and finally moved to its present building in 1977.\n   The present library collection encompasses over 230,000 books pertaining to various academic disciplines ranging from Archaeology to Zoology and subscriptions to about 150 academic journals. Further, the library provides electronic access  to full- text databases through the terminals located in the Library.',
            overflow: TextOverflow.ellipsis,
            maxLines: 20,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => new Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0), // here the desired height
          child: new AppBar(
            title: new Text(
              '',
              style: new TextStyle(
                fontSize: Theme.of(context).platform == TargetPlatform.iOS
                    ? 17.0
                    : 20.0,
              ),
            ),
            elevation:
                Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('assets/ReplaceAbout.jpg', fit: BoxFit.cover),
            BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.0),
                child: _buildContent(),
              ),
            )
          ],
        ),
      );
}
