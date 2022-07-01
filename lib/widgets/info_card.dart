import 'package:covid_info/fetchData/fetch_data.dart';
import 'package:covid_info/models/covid_info.dart';
import 'package:covid_info/notifications/notifications.dart';
import 'package:covid_info/r.g.dart';
import 'package:covid_info/static/static_values.dart';
import 'package:covid_info/theme/text.dart';
import 'package:covid_info/widgets/dataCard.dart';
import 'package:covid_info/widgets/prevent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';

class InfoCard extends StatefulWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  Info? info;
  bool isLoaded = false;
  late String date;

  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    var now = DateTime.now();
    var formatter =  DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);
    date = formattedDate;
    print(formattedDate);
  }

  getData() async {
    info = await FetchData().getData();
    print(info?.data?.globalNewCases);
    if (info != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isLoaded == false)
            const Center(
              child: CircularProgressIndicator(),
            )
          else if (isLoaded)
            const SizedBox(
              height: 100,
            ),
          Center(
              child: Column(
            children: [
              Text(
                "COVID - 19 INFO SRI LANKA",
                style: AppStyle.header,
              ),
              Text(
                date,
                style: AppStyle.textdate,
              ),
            ],
          )),
          SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 34, right: 34),
            child: Row(
              children: [
                DataCard(
                  image: R.image.deaths(),
                  info: '${info?.data?.localDeaths}',
                  text: 'Deaths',
                ),
                SizedBox(
                  width: 27,
                ),
                DataCard(
                  image: R.image.newTests(),
                  info: '${info?.data?.localNewCases}',
                  text: 'New Cases',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 34, right: 34),
            child: Row(
              children: [
                DataCard(
                  image: R.image.recovered(),
                  info: '${info?.data?.localRecovered}',
                  text: 'Recovered',
                ),
                SizedBox(
                  width: 27,
                ),
                DataCard(
                  image: R.image.tests(),
                  info: '${info?.data?.localTotalCases}',
                  text: 'Total Tests',
                ),
              ],
            ),
          ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Guidelines to Prevent COVID - 19',style: AppStyle.header2,),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                PreventWidget(text:"Wash your\n hands", image: R.image.wash()),
                SizedBox(width: 18,),
                PreventWidget(text:"Wear a\n mask", image: R.image.mask()),
                SizedBox(width: 18,),
                PreventWidget(text:"Keep your\n distance", image: R.image.distance()),
                SizedBox(width: 18,),
                PreventWidget(text:"Stay home\n if sick", image: R.image.sick()),


              ],
            ),
          )
        ],
      ),
    );
  }
}
