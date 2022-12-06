<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

无限滚动跑马灯

## Features

自定义跑马灯
支持：自动滚动、无限循环、自定义跑马的内容。
支持：手势拖拽、点击。

![image]

```dart
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

```







