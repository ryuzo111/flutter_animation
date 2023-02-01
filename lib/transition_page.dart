import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TransitionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PageAへ遷移する',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                ),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   PageRouteBuilder(
                  //     pageBuilder: (context, animation, secondaryAnimation) {
                  //       return _PageA();
                  //     },
                  //   ),
                  // );
                },
                child: Text('遷移'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class HeroToPage extends StatelessWidget {
//   HeroToPage({required this.index});

//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Scaffold(
//         backgroundColor: Colors.black87,
//         appBar: AppBar(
//           title: Text(HeroImages.titles[index]),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: Hero(
//             transitionOnUserGestures: true,
//             tag: HeroImages.titles[index],
//             child: Center(
//               child: ImageItem(url: HeroImages.urls[index]),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
