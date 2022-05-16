import 'package:flutter/material.dart';
import 'package:flutter_local_calendar_todo_app/ui/theme.dart';
import 'package:get/get.dart';

class MyInputFied extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;
  const MyInputFied({
    Key? key,
    required this.hint,
    required this.title,
    this.controller,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleStyle,
          ),
          Container(
              height: 52,
              padding: EdgeInsets.only(left: 14),
              margin: EdgeInsets.only(top: 2.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(children: [
                Expanded(
                  child: TextFormField(
                    readOnly: widget == null ? false : true,
                    autofocus: false,
                    cursorColor:
                        Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                    controller: controller,
                    style: SubTitleStyle,
                    decoration: InputDecoration(
                        hintText: hint,
                        hintStyle: SubTitleStyle,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: context.theme.backgroundColor,
                                width: 0)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: context.theme.backgroundColor,
                                width: 0))),
                  ),
                ),
                widget == null ? Container() : Container(child: widget)
              ]))
        ],
      ),
    );
  }
}
