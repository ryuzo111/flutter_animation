import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HeroImages {
  static const List<String> titles = [
    'test1',
    'test2',
    'test3',
    'test4',
    'test5',
    'test6',
    'test7',
    'test8',
    'test9',
    'test10',
    'test11',
    'test12',
  ];

  static const List<String> urls = [
    'https://1.bp.blogspot.com/-ZOg0qAG4ewU/Xub_uw6q0DI/AAAAAAABZio/MshyuVBpHUgaOKJtL47LmVkCf5Vge6MQQCNcBGAsYHQ/s1600/pose_pien_uruuru_woman.png',
    'https://1.bp.blogspot.com/-0lDBWUFoIKI/YEGQA-Zgb6I/AAAAAAABdc8/gkLOZK9ojdAg0sorUWXtHfVcwU7C4qodwCNcBGAsYHQ/s896/buranko_girl_sad.png',
    'https://1.bp.blogspot.com/-l4fWuSze_MI/YHDkJRsVYzI/AAAAAAABdlM/4lid3iHq_aMFybNb9PYCOpNIEtOwgwRFwCNcBGAsYHQ/s755/hengao_mabuta_uragaesu.png',
    'https://blogger.googleusercontent.com/img/a/AVvXsEhYsLiBv-GG1j-ztSjPF87XurB9N9tah2qqyHXYNpxnQmlRNj8YPTIOgEUCfwroeVEeeKKVGH4B9O9r5hEIydIBvVVckKxMatHFTaVbFHTeQuqIwNcx28KgcU8t8lGY9c-3UUQBNJtZPRAL8T7PiiXuKJZD7ZPKU2tFkGq6DCBLjXcSd-X9wn7s5IeTWA=s805',
    'https://1.bp.blogspot.com/-lBwjcbFpUC8/X7zMGDag4KI/AAAAAAABcYA/UfxtLUmMtG4yghNnMtg6NHhI912d2jo_QCNcBGAsYHQ/s763/buki_sasumata.png',
    'https://blogger.googleusercontent.com/img/a/AVvXsEib5phyUSRqDvePg-ZD3FSPyLRhi8L6UaXFOXqwljCjOlI0Iau2VbDu9I5RvB2-wfzrTF9GMXkdAosObQlA-TMwqLD3KjLLNwAQcjZE6TaKf-qqbJI9-uRtw9Ayf_L6rYhEAAs_r7kmXzWZqKPl-mEl1jg_qTzAdsARErw2eqOUmtvwLrR4AgpF-4tsVw=s985',
    'https://1.bp.blogspot.com/-ZOg0qAG4ewU/Xub_uw6q0DI/AAAAAAABZio/MshyuVBpHUgaOKJtL47LmVkCf5Vge6MQQCNcBGAsYHQ/s1600/pose_pien_uruuru_woman.png',
    'https://1.bp.blogspot.com/-0lDBWUFoIKI/YEGQA-Zgb6I/AAAAAAABdc8/gkLOZK9ojdAg0sorUWXtHfVcwU7C4qodwCNcBGAsYHQ/s896/buranko_girl_sad.png',
    'https://1.bp.blogspot.com/-l4fWuSze_MI/YHDkJRsVYzI/AAAAAAABdlM/4lid3iHq_aMFybNb9PYCOpNIEtOwgwRFwCNcBGAsYHQ/s755/hengao_mabuta_uragaesu.png',
    'https://blogger.googleusercontent.com/img/a/AVvXsEhYsLiBv-GG1j-ztSjPF87XurB9N9tah2qqyHXYNpxnQmlRNj8YPTIOgEUCfwroeVEeeKKVGH4B9O9r5hEIydIBvVVckKxMatHFTaVbFHTeQuqIwNcx28KgcU8t8lGY9c-3UUQBNJtZPRAL8T7PiiXuKJZD7ZPKU2tFkGq6DCBLjXcSd-X9wn7s5IeTWA=s805',
    'https://1.bp.blogspot.com/-lBwjcbFpUC8/X7zMGDag4KI/AAAAAAABcYA/UfxtLUmMtG4yghNnMtg6NHhI912d2jo_QCNcBGAsYHQ/s763/buki_sasumata.png',
    'https://blogger.googleusercontent.com/img/a/AVvXsEib5phyUSRqDvePg-ZD3FSPyLRhi8L6UaXFOXqwljCjOlI0Iau2VbDu9I5RvB2-wfzrTF9GMXkdAosObQlA-TMwqLD3KjLLNwAQcjZE6TaKf-qqbJI9-uRtw9Ayf_L6rYhEAAs_r7kmXzWZqKPl-mEl1jg_qTzAdsARErw2eqOUmtvwLrR4AgpF-4tsVw=s985',
  ];
}

class ImageItem extends StatelessWidget {
  ImageItem({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) => Container(
        //ここが画面読み込み中の表示
        color: Colors.grey[200],
        child: CircularProgressIndicator(),
      ),
      fit: BoxFit.cover,
    );
  }
}

class HeroFromPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        children: [
          for (var index = 0; index < HeroImages.titles.length; index++)
            Hero(
              //ここが動作について
              tag: HeroImages.titles[index], //遷移先と遷移元をtagがつなぐようにする
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HeroToPage(
                        index: index,
                      ),
                    ),
                  );
                },
                child: ImageItem(
                  url: HeroImages.urls[index],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class HeroToPage extends StatelessWidget {
  HeroToPage({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text(HeroImages.titles[index]),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Hero(
            tag: HeroImages.titles[index],
            child: Center(
              child: ImageItem(url: HeroImages.urls[index]),
            ),
          ),
        ),
      ),
    );
  }
}
