import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../create_business1/create_business1_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MainProfilePageWidget extends StatefulWidget {
  const MainProfilePageWidget({
    Key key,
    this.countyName,
  }) : super(key: key);

  final String countyName;

  @override
  _MainProfilePageWidgetState createState() => _MainProfilePageWidgetState();
}

class _MainProfilePageWidgetState extends State<MainProfilePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Users2Record>(
      stream: Users2Record.getDocument(currentUserReference),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          );
        }
        final mainProfilePageUsers2Record = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.primaryColor,
            automaticallyImplyLeading: false,
            leading: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 0,
                    buttonSize: 40,
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                )
              ],
            ),
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                          child: Image.asset(
                            'assets/images/50top.png',
                            width: 35,
                            height: 35,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First Link',
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Resource Directory',
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            actions: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 50,
                      icon: Icon(
                        Icons.menu_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () async {
                        scaffoldKey.currentState.openEndDrawer();
                      },
                    ),
                  )
                ],
              )
            ],
            centerTitle: false,
            elevation: 4,
          ),
          backgroundColor: FlutterFlowTheme.primaryColor,
          endDrawer: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Drawer(
              elevation: 16,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 160,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.primaryColor,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 10, 10, 0),
                                          child: Container(
                                            width: 70,
                                            height: 70,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              'https://picsum.photos/seed/251/600',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(160, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30,
                                                      borderWidth: 1,
                                                      buttonSize: 40,
                                                      icon: Icon(
                                                        Icons.close,
                                                        color: Colors.white,
                                                        size: 20,
                                                      ),
                                                      onPressed: () async {
                                                        if (scaffoldKey
                                                                .currentState
                                                                .isDrawerOpen ||
                                                            scaffoldKey
                                                                .currentState
                                                                .isEndDrawerOpen) {
                                                          Navigator.pop(
                                                              context);
                                                        }
                                                      },
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        mainProfilePageUsers2Record.firstName,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        mainProfilePageUsers2Record.lastName,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 5, 10, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        mainProfilePageUsers2Record.email,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            Icons.home,
                            color: Colors.black,
                            size: 20,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePageWidget(),
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Home',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            Icons.people,
                            color: Colors.black,
                            size: 20,
                          ),
                          onPressed: () async {
                            scaffoldKey.currentState.openEndDrawer();
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Edit Profile',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: FaIcon(
                            FontAwesomeIcons.cog,
                            color: Colors.black,
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Settings',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              mainProfilePageUsers2Record.photoUrl,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Text(
                                  'Hi ',
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        mainProfilePageUsers2Record.firstName,
                        style: FlutterFlowTheme.title2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
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
                    ),
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
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
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
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                'Create a new \nEvent',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.subtitle1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
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
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateBusiness1Widget(),
                              ),
                            );
                          },
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
                                  'Create a New\nBusiness',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.subtitle1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
