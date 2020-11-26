import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

List<String> listBackImg = [
  'images/car1.jpg',
  'images/car2.jpg',
  'images/car3.jpg',
  'images/car4.jpg',
];
List<int> randomNumber = [
  0,
  1,
  2,
  3,
  0,
  1,
  2,
  3,
  0,
  1,
  2,
  3,
  0,
  1,
  2,
  3,
];

List<String> temporaryStorageImg = [];
List<String> StorageImg = [];
List<AnimationController> temporaryStorageController = [];
List<AnimationController> StorageController = [];
int i = 0;

class NewestWidget extends StatefulWidget {
  const NewestWidget({
    Key key,
    @required Animation<double> animation,
    @required AnimationController animationController,
    @required String img,
  })  : _animation = animation,
        _animationController = animationController,
        _img = img,
        super(key: key);

  final Animation<double> _animation;
  final AnimationController _animationController;
  final String _img;

  @override
  _NewestWidgetState createState() => _NewestWidgetState();
}

class _NewestWidgetState extends State<NewestWidget> {
  void onT() async {
    i++;

    if (temporaryStorageImg.length < 2) {
      temporaryStorageImg.add(widget._img);
      widget._animationController.forward();
      temporaryStorageController.add(widget._animationController);
      StorageController.add(widget._animationController);
    }
    widget._animationController
      ..addListener(() {
        setState(() {});
        if (temporaryStorageImg.length == 2 &&
            (temporaryStorageImg[0] != temporaryStorageImg[1])) {
          if (widget._animationController.isCompleted) {
            Timer(Duration(milliseconds: 500), () {
              temporaryStorageController
                  .forEach((element) => element.reverse());
            });
          } else if (widget._animationController.isDismissed) {
            temporaryStorageImg.clear();
            temporaryStorageController.clear();
          }
        }
      });

    if (temporaryStorageImg.length == 2 &&
        (temporaryStorageImg[0] == temporaryStorageImg[1])) {
      StorageController.add(widget._animationController);
      StorageImg.add(widget._img);
      temporaryStorageImg.clear();
      temporaryStorageController.clear();
    }

    widget._animationController
      ..addListener(() {
        setState(() {});
        if (StorageImg.length == 8) {
          if (widget._animationController.isCompleted) {
            Timer(Duration(seconds: 2), () {
              StorageController.forEach((element) => element.reverse());
              StorageController.clear();
              StorageImg.clear();
              randomNumber.shuffle();
              i = 0;
            });

            // listBackImg.shuffle();

          }
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(1, 3, 002)
          ..rotateY(pi * widget._animation.value),
        child: GestureDetector(
          onTap: widget._animationController.isDismissed
              ? onT
              : null, // widget._animationController.isDismissed ? onT : null,
          child: widget._animation.value >= 0.5
              ? Container(
                  padding:
                      EdgeInsets.only(top: 5, right: 5, bottom: 5, left: 5),
                  // height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage(widget._img),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              : Container(
                  padding:
                      EdgeInsets.only(top: 5, right: 5, bottom: 5, left: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('images/backCard.jpg'),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
        ),
      ),
    );
  }
}
