import 'package:flutter/material.dart';
import 'package:infinite_marquee/infinite_marquee.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('无限滚动跑马灯'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 70,
            child: InfiniteMarquee(
              stepOffset: 1,
              itemBuilder: (BuildContext context, int index) {
                /// 自定义控件
                return GestureDetector(
                  onTap: () {
                    print('点击了$index');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 10),
                    // padding: EdgeInsets.only(right: 10),
                    width: 90,
                    height: 70,
                    decoration: BoxDecoration(
                      color: index % 2 == 0 ? Colors.red : Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('自定义$index'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
