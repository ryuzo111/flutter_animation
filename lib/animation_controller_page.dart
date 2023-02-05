import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:math';

class AnimationControllerPage extends StatefulWidget {
  const AnimationControllerPage({super.key});

  @override
  State<AnimationControllerPage> createState() =>
      _AnimationControllerPageState();
}

class _AnimationControllerPageState extends State<AnimationControllerPage>
    with SingleTickerProviderStateMixin {
  //vsyncパラメータを導入するにはこのmixinが必要となる
  late AnimationController _animationController; //宣言とインスタンス化は同時にできない
  double _value = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this, //animationControllerを利用するためにはvsyncパラメータがひつよう
      duration: Duration(
        seconds: 15,
      ),
    ); //インスタンス化

    _animationController.addListener(() {
      setState(() {
        _value = _animationController.value;
      });
    });
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
            Text(
              '_animationController\n.value = ',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            Text(
              _value.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 64,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              width: 130,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.play_arrow),
                    Text('再生'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 130,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.rotate(
                      // angle: math.pi,
                      angle: 30,
                      child: Icon(
                        Icons.play_arrow,
                      ),
                    ),
                    Text('逆再生'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 130,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.rotate(
                      // angle: math.pi,
                      angle: 30,
                      child: Icon(
                        Icons.pause,
                      ),
                    ),
                    Text('一時停止'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 130,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.rotate(
                      // angle: math.pi,
                      angle: 30,
                      child: Icon(
                        Icons.stop,
                      ),
                    ),
                    Text('停止'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 130,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.rotate(
                      // angle: math.pi,
                      angle: 30,
                      child: Icon(
                        Icons.repeat,
                      ),
                    ),
                    Text('リピート'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              'Duration',
              style: TextStyle(fontSize: 22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: null,
                  groupValue: null,
                  onChanged: null,
                ),
                const Text('15秒'),
                Radio(
                  value: null,
                  groupValue: null,
                  onChanged: null,
                ),
                const Text('30秒'),
                Radio(
                  value: null,
                  groupValue: null,
                  onChanged: null,
                ),
                const Text('60秒'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
