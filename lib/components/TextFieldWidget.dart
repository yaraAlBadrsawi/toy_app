import 'package:flutter/material.dart';
import 'package:hexa_project/core/resources/manger_sizes.dart';
import 'package:hexa_project/util/size_util.dart';
import '../util/const.dart';

class TextFieldWidget extends StatelessWidget {
  final IconData iconData;
  final String hintText;
  final IconData? suffixIcon;
  final String? show;
  final double padding;
  final TextEditingController controller;

  final String? errorText;
  // double defaultPadding =  SizeUtil.setHeight(10);

  TextFieldWidget(
    this.iconData,
    this.hintText,
    this.controller, {
    super.key,
    this.suffixIcon,
    this.show,
    this.errorText,
    double? padding,
  }) : padding = padding ?? SizeUtil.setWidth(ManagerWidth.w10);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeUtil.setWidth(50.0),
          vertical: SizeUtil.setHeight(8.0)),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        maxLines: null,
        decoration: InputDecoration(
          alignLabelWithHint: true, // Set alignLabelWithHint to true
          errorText: errorText,
          hintTextDirection: TextDirection.rtl,
          hintText: hintText,
          hintStyle:
              TextStyle(color: black, fontSize: SizeUtil.setFontSize(20)),
          focusColor: black,
          contentPadding: EdgeInsets.symmetric(
              horizontal: SizeUtil.setWidth(10), vertical: padding),
          prefixIcon: Icon(
            iconData,
            size: SizeUtil.setWidth(24.0),
            color: deepFuchsia,
          ),
          suffixIcon: suffixIcon != null && show == null
              ? Icon(
                  suffixIcon,
                  color: silver,
                  size: SizeUtil.setWidth(24.0),
                )
              : Container(
                  width: SizeUtil.setWidth(0),
                  child: show != null
                      ? Center(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: SizeUtil.setHeight(15),
                                horizontal: SizeUtil.setWidth(3),
                              ),
                              width: SizeUtil.setWidth(320),
                              decoration: BoxDecoration(
                                color: Color(0xffF5F5F5),
                                borderRadius: BorderRadius.circular(
                                    SizeUtil.setRadius(10)),
                              ),
                              child: Text(
                                '$show',
                                style: TextStyle(
                                    fontSize: SizeUtil.setFontSize(12)),
                              )))
                      : null),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeUtil.setRadius(10)),
            borderSide: BorderSide(color: lightSmoke),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: deepFuchsia),
          ),
        ),
      ),
    );
  }
}
