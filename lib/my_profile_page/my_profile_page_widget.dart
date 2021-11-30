import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfilePageWidget extends StatefulWidget {
  const MyProfilePageWidget({Key key}) : super(key: key);

  @override
  _MyProfilePageWidgetState createState() => _MyProfilePageWidgetState();
}

class _MyProfilePageWidgetState extends State<MyProfilePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        actions: [
          Visibility(
            visible: currentUserEmailVerified ?? true,
            child: Align(
              alignment: AlignmentDirectional(0, 0.25),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                child: AuthUserStreamWidget(
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 0,
                    borderWidth: 1,
                    buttonSize: 40,
                    icon: Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () async {
                      await signOut();
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NavBarPage(initialPage: 'HomePage'),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: Visibility(
          visible: currentUserEmailVerified ?? true,
          child: AuthUserStreamWidget(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.44,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFFC70039),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x37000000),
                                offset: Offset(0, 1),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                child: Icon(
                                  Icons.business_sharp,
                                  color: Colors.white,
                                  size: 44,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: AutoSizeText(
                                  'My Businesses',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.subtitle1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 4, 8, 0),
                                  child: Text(
                                    'View your posted businesses and agencies.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont(
                                      'Lexend Deca',
                                      color: Color(0xB3FFFFFF),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.44,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFF4B39EF),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x39000000),
                                offset: Offset(0, 1),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                child: Icon(
                                  Icons.event,
                                  color: Colors.white,
                                  size: 44,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: AutoSizeText(
                                  'My Events',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.subtitle1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 4, 8, 0),
                                  child: Text(
                                    'Active and upcoming events',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont(
                                      'Lexend Deca',
                                      color: Color(0xB3FFFFFF),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
