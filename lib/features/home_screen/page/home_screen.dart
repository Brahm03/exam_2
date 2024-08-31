import 'package:exam_2/core/constants/color/color_const.dart';
import 'package:exam_2/core/constants/fonts/font_style.dart';
import 'package:exam_2/core/constants/icons/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.background,
      appBar: AppBar(
        backgroundColor: ColorConst.background,
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset(
            IconConst.outline,
          ),
        ),
        title: Text(
          'Balance',
          style: FontStyles.medium.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(IconConst.settings),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 14,
            ),
            Center(
              child: Text(
                'Mr. Anderson',
                style: FontStyles.small,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '1.000.000 USD',
              style: FontStyles.big,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: SvgPicture.asset(IconConst.arrowUp),
                ),
                Text(
                  '206.920 USD (10,6%)',
                  style:
                      FontStyles.small.copyWith(color: ColorConst.lightGreen),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 49, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  decoration: BoxDecoration(
                      color: ColorConst.green,
                      borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    children: [
                      SvgPicture.asset(IconConst.send),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Deposit',
                        style: FontStyles.small,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 49, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  decoration: BoxDecoration(
                      color: ColorConst.green,
                      borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    children: [
                      SvgPicture.asset(IconConst.receive),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Withdraw',
                        style: FontStyles.small,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text('Watchlist', style: FontStyles.small),
                Spacer(),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: ColorConst.grey,
                  child: SvgPicture.asset(
                    IconConst.plus,
                    color: ColorConst.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 300,
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: ColorConst.white,
                        radius: 24,
                        child: SvgPicture.asset(
                          IconConst.fire,
                          height: 24,
                          width: 24,
                        )),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('BTC',
                            style: FontStyles.medium
                                .copyWith(fontWeight: FontWeight.bold)),
                        Text('8,600',
                            style: FontStyles.medium
                                .copyWith(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Bitcoin/Usd',
                            style: FontStyles.small
                                .copyWith(fontWeight: FontWeight.bold)),
                        Text('+50(+2,22%)',
                            style: FontStyles.small
                                .copyWith(color: ColorConst.green)),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
