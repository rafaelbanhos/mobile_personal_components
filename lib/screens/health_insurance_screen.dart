import 'package:flutter/material.dart';
import 'package:mobile_personal_components/components/health_insurance_components/addresses_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/cards_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/contacts_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/coverages_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/custom_button.dart';
import 'package:mobile_personal_components/components/health_insurance_components/faqs_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/movements_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/plans_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/profile_user_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/result_search_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/service_list_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/service_list_type_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/settings_component.dart';
import 'package:mobile_personal_components/components/health_insurance_components/user_component.dart';

class HealthInsuranceScreen extends StatefulWidget {
  const HealthInsuranceScreen({super.key});

  @override
  State<HealthInsuranceScreen> createState() => _HealthInsuranceScreenState();
}

class _HealthInsuranceScreenState extends State<HealthInsuranceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          'Health Insurance App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(6, 176, 188, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AddressesComponent('Guimarães', 'Rua São Gonçalo', '4820-999'),
              Divider(),
              CardsComponent('3232', '12/12/2030'),
              Divider(),
              ContactsComponent('323232', 'Telefone'),
              Divider(),
              ContactsComponent('test@test.com', 'E-mail'),
              Divider(),
              CoveragesComponent('Internamento', 10),
              Divider(),
              FaqsComponent('FAQ'),
              Divider(),
              MovementsComponent(
                  'Requisition Type', 'Description', '12/12/2030'),
              Divider(),
              PlansComponent('Insurance', '32322020'),
              Divider(),
              ProfileUserComponent('Dorival Brito', '30/12/1960'),
              Divider(),
              ResultSearchComponent('Description', 'Rua São Gonçalo',
                  '322333333', 323232, 233232),
              Divider(),
              ServiceListComponent(
                'Description',
              ),
              Divider(),
              ServiceListTypeComponent('Description'),
              Divider(),
              SettingsComponent(
                'Title',
                color: Colors.red,
              ),
              Divider(),
              UserComponent('Dorival Brito'),
              Divider(),
              CustomButton('Text Here')
            ],
          ),
        ),
      ),
    );
  }
}
