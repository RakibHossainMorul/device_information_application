// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget displayInformation(String deviceProperties, String deviceInformation) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Card(
      elevation: 5,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            deviceInformation,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          Divider(
            color: Colors.amber,
            indent: 25,
            endIndent: 25,
            height: 15,
            thickness: 0.80,
          ),
          Text(
            deviceProperties,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    ),
  );
}
