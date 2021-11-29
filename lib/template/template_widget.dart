import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TemplateWidget extends StatefulWidget {
  TemplateWidget({
    Key key,
    this.countyName,
  }) : super(key: key);

  final String countyName;

  @override
  _TemplateWidgetState createState() => _TemplateWidgetState();
}

class _TemplateWidgetState extends State<TemplateWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
              child: Image.network(
                'https://picsum.photos/seed/263/600',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              widget.countyName,
              style: FlutterFlowTheme.title2.override(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontSize: 18,
              ),
            )
          ],
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Icon(
                  Icons.thirteen_mp,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 40,
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              )
            ],
          )
        ],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
    );
  }
}
