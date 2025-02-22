import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/consts.dart';
class first_page extends StatefulWidget {
  const first_page({super.key});

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
WeatherFactory wf = new WeatherFactory(OPENWEATHER_API_KEY, language: Language.ENGLISH);

Weather? _weather;
@override
void initState() {
  super.initState();
  wf.currentWeatherByCityName(cityName!).then((w) {
    setState(() {
      _weather = w;
    });
  });
}

@override
Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;


  //////////////////
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:_buildUI(),
    
    );
  }
  Widget _buildUI(){
  if (_weather==null){
    return Center(
      child: CircularProgressIndicator(),
    );
  }
  return SizedBox(
    width: MediaQuery.sizeOf(context).width,
    height: MediaQuery.sizeOf(context).height,
child: Column(
  mainAxisSize: MainAxisSize.max,
    mainAxisAlignment:MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    _locationHeader(),
    SizedBox(
      height: MediaQuery.sizeOf(context).height*0.08,
    ),
    _dateTimeInfo(),
],),
  );
  }
  Widget _locationHeader(){
    return Text(
      _weather!.areaName ??"",
      style:const TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w500,
      ),
    );
  }
  Widget _dateTimeInfo(){
    DateTime now = _weather!.date!;
    return Column(
      children: [
        Text(DateFormat("h:mm a").format(now),
        style: const TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.normal,
        ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(DateFormat("EEEE").format(now),
        style: const TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.normal,
        ),
        ),
          ],
        )
        ],
    );
  }
}