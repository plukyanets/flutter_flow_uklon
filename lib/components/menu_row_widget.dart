import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuRowWidget extends StatefulWidget {
  MenuRowWidget({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  final Widget icon;
  final String text;

  @override
  _MenuRowWidgetState createState() => _MenuRowWidgetState();
}

class _MenuRowWidgetState extends State<MenuRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          widget.icon,
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            child: Text(
              valueOrDefault<String>(
                widget.text,
                'Menu item text',
              ),
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Poppins',
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
