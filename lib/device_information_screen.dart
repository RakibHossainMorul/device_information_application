// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_information_application/widgets/widgets.dart';
import 'package:flutter/material.dart';

class deviceInformationScreen extends StatelessWidget {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  AndroidDeviceInfo? androidInfo;
  Future<AndroidDeviceInfo> getInfo() async {
    return await deviceInfo.androidInfo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: IconButton(
                onPressed: () => exit(0),
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                )),
          ),
          title: Text(
            "Device Configuration",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFEDC9AF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
        ),
        body: SafeArea(
            child: FutureBuilder<AndroidDeviceInfo>(
          future: getInfo(),
          builder: (context, snapshot) {
            final data = snapshot.data!;
            return ListView(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              children: [
                SizedBox(
                  height: 10,
                ),
                displayInformation('Brand Name', data.brand!),
                displayInformation('Device', data.device!),
                displayInformation('Device Model', data.model!),
                displayInformation('Device Manufacturer', data.manufacturer!),
                displayInformation('Product', data.product!),
                displayInformation('Hardware', data.hardware.toString()),
                displayInformation(
                    'isPhysicalDevice', data.isPhysicalDevice.toString()),
                displayInformation(
                    'Device Version', data.version.release.toString()),
                displayInformation(
                    'Device BootLoader', data.bootloader.toString()),
                displayInformation('Device Display', data.display.toString()),
                displayInformation('Finger Print', data.fingerprint.toString()),
                displayInformation('BootLoader', data.host.toString()),
                displayInformation('Device ID', data.id.toString()),
                displayInformation(
                    'supported32BitAbis', data.supported32BitAbis.toString()),
                displayInformation(
                    'supported64BitAbis', data.supported64BitAbis.toString()),
                displayInformation('version.securityPatch',
                    data.version.securityPatch.toString()),
                displayInformation(
                    'version.sdkInt', data.version.sdkInt.toString()),
                displayInformation('version.previewSdkInt',
                    data.version.previewSdkInt.toString()),
                displayInformation(
                    'version.incremental', data.version.incremental.toString()),
                displayInformation(
                    ' version.codename', data.version.codename.toString()),
                displayInformation('Device Tags', data.tags.toString()),
                displayInformation('Device Type', data.type.toString()),
                displayInformation(
                    'supportedAbis', data.supportedAbis.toString()),
                displayInformation(
                    'systemFeatures', data.systemFeatures.toString()),
              ],
            );
          },
        )));
  }
}
