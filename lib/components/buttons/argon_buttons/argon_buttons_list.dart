import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';

class ArgonButtonsList extends StatefulWidget {
  @override
  _ArgonButtonsListState createState() => _ArgonButtonsListState();
}

class _ArgonButtonsListState extends State<ArgonButtonsList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ArgonTimerButton(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.45,
          minWidth: MediaQuery.of(context).size.width * 0.30,
          highlightColor: Colors.transparent,
          highlightElevation: 0,
          roundLoadingShape: false,
          onTap: (startTimer, btnState) {
            if (btnState == ButtonState.Idle) {
              startTimer(5);
            }
          },
          // initialTimer: 10,
          child: Text(
            "Resend OTP",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          loader: (timeLeft) {
            return Text(
              "Wait | $timeLeft",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            );
          },
          borderRadius: 5.0,
          color: Colors.transparent,
          elevation: 0,
          borderSide: BorderSide(color: Colors.black, width: 1.5),
        ),
        Divider(),
        ArgonTimerButton(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.45,
          onTap: (startTimer, btnState) {
            if (btnState == ButtonState.Idle) {
              startTimer(5);
            }
          },
          child: Text(
            "Resend OTP",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          loader: (timeLeft) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              width: 40,
              height: 40,
              child: Text(
                "$timeLeft",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            );
          },
          borderRadius: 5.0,
          color: Color(0xFF7866FE),
        ),
        Divider(),
        ArgonTimerButton(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.45,
          minWidth: MediaQuery.of(context).size.width * 0.30,
          highlightColor: Colors.transparent,
          highlightElevation: 0,
          roundLoadingShape: false,
          splashColor: Colors.transparent,
          onTap: (startTimer, btnState) {
            if (btnState == ButtonState.Idle) {
              startTimer(5);
            }
          },
          // initialTimer: 10,
          child: Text(
            "Resend OTP",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          loader: (timeLeft) {
            return Text(
              "Wait | $timeLeft",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            );
          },
          borderRadius: 5.0,
          color: Colors.transparent,
          elevation: 0,
        ),
        Divider(),
        ArgonButton(
          height: 50,
          roundLoadingShape: false,
          width: MediaQuery.of(context).size.width * 0.45,
          minWidth: MediaQuery.of(context).size.width * 0.30,
          onTap: (startLoading, stopLoading, btnState) {
            if (btnState == ButtonState.Idle) {
              startLoading();
            } else {
              stopLoading();
            }
          },
          child: Text(
            "Continue",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          loader: Text(
            "Loading...",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          borderRadius: 5.0,
          color: Color(0xFF7866FE),
        ),
      ],
    );
  }
}
