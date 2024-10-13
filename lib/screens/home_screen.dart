import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_personal_components/screens/health_insurance_screen.dart';
import 'package:mobile_personal_components/utils/button_type.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mobile Personal Components',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(6, 176, 188, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 12,
            ),
            Text(
              'Projects',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    child: ButtonType(
                        Icons.settings_input_component, 'Health Insurance App'),
                    onTap: () async {
                      await Get.to(() => HealthInsuranceScreen());
                    }),
                GestureDetector(
                  child:
                      ButtonType(Icons.medical_services_outlined, 'Keal App'),
                  onTap: () async {
                    // await Get.to(() => KealthLiveScreen());
                  },
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    child: ButtonType(Icons.business, 'Municipio App'),
                    onTap: () async {
                      //  await Get.to(() => MunicipioScreen());
                    }),
                GestureDetector(
                  child: ButtonType(Icons.home_work_outlined, 'My Template'),
                  onTap: () async {
                    //await Get.to(() => KentraTemplateScreen());
                  },
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Componentes',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () async {
                      // await Get.to(() => ButtonTypeScreens());
                    },
                    child: ButtonType(Icons.design_services, 'Buttons')),
                GestureDetector(
                    onTap: () async {
                      // await Get.to(() => OtpScreen());
                    },
                    child: ButtonType(Icons.message, 'OTP')),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () async {
                      // await Get.to(() => LoginTypesScreen());
                    },
                    child: ButtonType(Icons.person, 'Login Screen')),
                ButtonType(Icons.widgets, 'Widgets'),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonType(Icons.person, 'Avatar'),
                ButtonType(Icons.design_services, 'Rx Widgets'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
