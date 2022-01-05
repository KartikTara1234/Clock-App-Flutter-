import 'package:clock_app/screens/components/clock.dart';
import 'package:clock_app/screens/components/country_card.dart';
import 'package:clock_app/screens/components/time_in_minute_and_hour.dart';
import 'package:clock_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Haryana, India | PST ",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "New York",
                    timeZone: "+3 HRS | EST",
                    iconSrc: "assets/icons/Liberty.svg",
                    time: "9:20",
                    period: "AM",
                  ),
                  CountryCard(
                    country: "Sydeny, AU",
                    timeZone: "+19 HRS | AEST",
                    iconSrc: "assets/icons/Sydney.svg",
                    time: "1:20",
                    period: "AM",
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
