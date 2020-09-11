import 'package:grocery_ui_template/app_theme.dart';
import 'package:flutter/material.dart';

class QuickItemWidget extends StatefulWidget {
  QuickItemWidget(
      {Key key,
      int index,
      Animation animation,
      AnimationController animationController})
      : _index = index,
        _animation = animation,
        _animationController = animationController,
        super(key: key);

  final int _index;
  final Animation _animation;
  final AnimationController _animationController;

  @override
  _QuickItemWidgetState createState() => _QuickItemWidgetState();
}

class _QuickItemWidgetState extends State<QuickItemWidget> {
  @override
  Widget build(BuildContext context) {
    return _getQuickItem(context, widget._index);
  }

  Widget _getQuickItem(BuildContext context, int index) {
    return AnimatedBuilder(
      animation: widget._animationController,
      builder: (context, child) {
        double xValue = 50 * (1 - widget._animation.value);
        return FadeTransition(
          opacity: widget._animation,
          child: Transform(
            transform: Matrix4.translationValues(xValue, 0, 0),
            child: Container(
              padding: EdgeInsets.only(right: 20.0),
              width: MediaQuery.of(context).size.width * 0.7,
              color: AppTheme.appWhiteColor,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    padding: EdgeInsets.only(
                      left: 60.0,
                      right: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: AppTheme.appGreyBackgroundColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Twisty Fried Potatoes',
                          style: AppTheme.cardItemTitleStyle,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 Kilogram',
                              style: AppTheme.cardItemQuantityStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '4.4',
                                  style: AppTheme.cardItemRatingStyle,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppTheme.primaryColor,
                                  size: 14.0,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '₹ 280.00',
                              style: AppTheme.cardItemPriceStyle,
                            ),
                            ClipOval(
                              child: Material(
                                color: AppTheme.primaryColor, // button color
                                child: InkWell(
                                  splashColor:
                                      AppTheme.primaryColor, // inkwell color
                                  child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: AppTheme.appWhiteColor,
                                      size: 17.0,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/item_$index.png',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
