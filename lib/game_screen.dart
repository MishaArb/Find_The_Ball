import 'package:flutter/material.dart';
import 'package:find_car/moving_card.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  AnimationController _animationController1;
  Animation<double> _animation1;

  AnimationController _animationController2;
  Animation<double> _animation2;

  AnimationController _animationController3;
  Animation<double> _animation3;

  AnimationController _animationController4;
  Animation<double> _animation4;

  AnimationController _animationController5;
  Animation<double> _animation5;

  AnimationController _animationController6;
  Animation<double> _animation6;

  AnimationController _animationController7;
  Animation<double> _animation7;

  AnimationController _animationController8;
  Animation<double> _animation8;

  AnimationController _animationController9;
  Animation<double> _animation9;

  AnimationController _animationController10;
  Animation<double> _animation10;

  AnimationController _animationController11;
  Animation<double> _animation11;

  AnimationController _animationController12;
  Animation<double> _animation12;

  AnimationController _animationController13;
  Animation<double> _animation13;

  AnimationController _animationController14;
  Animation<double> _animation14;

  AnimationController _animationController15;
  Animation<double> _animation15;

  @override
  void initState() {
    super.initState();
    randomNumber.shuffle();
    listBackImg.shuffle();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation = Tween<double>(end: 1, begin: 0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });

    _animationController1 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation1 = Tween<double>(end: 1, begin: 0).animate(_animationController1)
      ..addListener(() {
        setState(() {});
      });

    _animationController2 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation2 = Tween<double>(end: 1, begin: 0).animate(_animationController2)
      ..addListener(() {
        setState(() {});
      });

    _animationController3 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation3 = Tween<double>(end: 1, begin: 0).animate(_animationController3)
      ..addListener(() {
        setState(() {});
      });

    _animationController4 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation4 = Tween<double>(end: 1, begin: 0).animate(_animationController4)
      ..addListener(() {
        setState(() {});
      });

    _animationController5 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation5 = Tween<double>(end: 1, begin: 0).animate(_animationController5)
      ..addListener(() {
        setState(() {});
      });

    _animationController6 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation6 = Tween<double>(end: 1, begin: 0).animate(_animationController6)
      ..addListener(() {
        setState(() {});
      });

    _animationController7 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation7 = Tween<double>(end: 1, begin: 0).animate(_animationController7)
      ..addListener(() {
        setState(() {});
      });

    _animationController8 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation8 = Tween<double>(end: 1, begin: 0).animate(_animationController8)
      ..addListener(() {
        setState(() {});
      });

    _animationController9 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation9 = Tween<double>(end: 1, begin: 0).animate(_animationController9)
      ..addListener(() {
        setState(() {});
      });

    _animationController10 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation10 =
        Tween<double>(end: 1, begin: 0).animate(_animationController10)
          ..addListener(() {
            setState(() {});
          });

    _animationController11 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 400),
        reverseDuration: Duration(milliseconds: 800));
    _animation11 =
        Tween<double>(end: 1, begin: 0).animate(_animationController11)
          ..addListener(() {
            setState(() {});
          });

    _animationController12 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation12 =
        Tween<double>(end: 1, begin: 0).animate(_animationController12)
          ..addListener(() {
            setState(() {});
          });

    _animationController13 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation13 =
        Tween<double>(end: 1, begin: 0).animate(_animationController13)
          ..addListener(() {
            setState(() {});
          });

    _animationController14 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation14 =
        Tween<double>(end: 1, begin: 0).animate(_animationController14)
          ..addListener(() {
            setState(() {});
          });

    _animationController15 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 800));
    _animation15 =
        Tween<double>(end: 1, begin: 0).animate(_animationController15)
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Text(i <= 1 ? 'Step: $i' : 'Steps: $i',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, bottom: 10, left: 5, right: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  NewestWidget(
                    animation: _animation,
                    animationController: _animationController,
                    img: listBackImg[randomNumber[3]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation1,
                    animationController: _animationController1,
                    img: listBackImg[randomNumber[1]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation2,
                    animationController: _animationController2,
                    img: listBackImg[randomNumber[2]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation3,
                    animationController: _animationController3,
                    img: listBackImg[randomNumber[0]],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, bottom: 10, left: 5, right: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  NewestWidget(
                    animation: _animation4,
                    animationController: _animationController4,
                    img: listBackImg[randomNumber[4]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation5,
                    animationController: _animationController5,
                    img: listBackImg[randomNumber[6]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation6,
                    animationController: _animationController6,
                    img: listBackImg[randomNumber[7]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation7,
                    animationController: _animationController7,
                    img: listBackImg[randomNumber[5]],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, bottom: 10, left: 5, right: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  NewestWidget(
                    animation: _animation8,
                    animationController: _animationController8,
                    img: listBackImg[randomNumber[8]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation9,
                    animationController: _animationController9,
                    img: listBackImg[randomNumber[10]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation10,
                    animationController: _animationController10,
                    img: listBackImg[randomNumber[9]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation11,
                    animationController: _animationController11,
                    img: listBackImg[randomNumber[11]],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, bottom: 10, left: 5, right: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  NewestWidget(
                    animation: _animation12,
                    animationController: _animationController12,
                    img: listBackImg[randomNumber[15]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation13,
                    animationController: _animationController13,
                    img: listBackImg[randomNumber[13]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation14,
                    animationController: _animationController14,
                    img: listBackImg[randomNumber[12]],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  NewestWidget(
                    animation: _animation15,
                    animationController: _animationController15,
                    img: listBackImg[randomNumber[14]],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
