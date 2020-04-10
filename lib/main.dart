import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './info.dart';
import './Maps.dart' as mapp;
import './Appointment.dart' as app;

void main() => runApp(MaterialApp(
    home : Home()
));

class choices{
  String text;
  IconData t;
  choices({this.text, this.t});

}
List<choices> choice=[
choices(text: 'info', t: Icons.event_note ),
choices(text: 'Zone', t: Icons.assignment_late ),
  choices(text: 'Appointment', t: Icons.local_hospital ),

];
List<String> alpha=[
  'authorities suspended all train passenger and inter-state bus services till March 31 in unprecedented steps to contain the spread of the infection. ',
  'On Thursday, the first made-in-India coronavirus testing kits reached the market, raising hopes of an increase in screening of patients with flu symptoms to confirm or rule out the Covid-19 infection.',
  'LINK===>>>>    https://www.google.com/search?client=ms-android-samsung&biw=360&bih=560&sxsrf=ALeKk03c9S7rIMCZ51SUpmRBBA3s8MGKJQ%3A1586533260918&ei=jJOQXozVN8GU4-EP-a-WuAk&q=global+live+corona+count&oq=global+live+corona+count&gs_lcp=ChNtb2JpbGUtZ3dzLXdpei1zZXJwEAwyBAgAEEcyBAgAEEcyBAgAEEcyBAgAEEcyBAgAEEdQAFgAYM2BAWgAcAF4AIABAIgBAJIBAJgBAA&sclient=mobile-gws-wiz-serp',
  'Modi-Trump hold phone conversation, talk of India-US partnership in fight against Covid-19      Link : https://www.google.com/amp/s/theprint.in/world/modi-trump-hold-phone-conversation-talk-of-india-us-partnership-in-fight-against-covid-19/395431/%3famp',
  'Outrage over a Muslim congregation that has sparked a new wave of Covid-19 cases in India has taken an Islamophobic turn.  Link : https://www.google.com/amp/s/www.bbc.com/news/amp/world-asia-india-52147260', '',

];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Text(
            'Covid-19 Aid',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          bottom: TabBar(
            tabs: choice.map<Widget>((choices choices){
              return  Tab(
                text: choices.text,
                icon: Icon(choices.t),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children:alpha.map((text) => Informatio(beta: text)).toList(),
              ),
            ),
             new mapp.Map(),
            new app.Appoinment(),
          ],

        ),


      ),
    );
  }
}


