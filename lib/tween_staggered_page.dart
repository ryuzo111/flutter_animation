import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:math';
import 'dart:ui';

class TweenStaggeredPage extends StatefulWidget {
  const TweenStaggeredPage({super.key});

  @override
  State<TweenStaggeredPage> createState() => _TweenStaggeredPageState();
}

class _TweenStaggeredPageState extends State<TweenStaggeredPage>
    with SingleTickerProviderStateMixin {
  //vsyncパラメータを導入するにはこのmixinが必要となる
  late AnimationController _animationController; //宣言とインスタンス化は同時にできない
  final int _seconds = 0;

  // _colorFoo = ColorTween(begin: Colors.blue, end: Colors.yellow,).animate(_animationController);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this, //animationControllerを利用するためにはvsyncパラメータがひつよう
      duration: Duration(
        seconds: 15,
      ),
    )..addListener(() {
        setState(() {});
      }); //インスタンス化
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                onPrimary: Colors.black,
              ),
              onPressed: _animationController.forward,
              child: Text('再生'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                onPrimary: Colors.black,
              ),
              onPressed: _animationController.forward,
              child: Text('逆再生'),
            ),
            Text(
              '_animationController\n.value = ',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
