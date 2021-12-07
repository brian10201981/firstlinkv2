import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main_profile_page/main_profile_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateBusiness3Widget extends StatefulWidget {
  const CreateBusiness3Widget({
    Key key,
    this.countyName,
    this.businessName,
    this.businessEmailAddress,
    this.businessWebsite,
    this.businessPhone,
    this.businessLogo,
    this.streetAddress,
    this.poBox,
    this.city,
    this.state,
    this.zipCode,
  }) : super(key: key);

  final String countyName;
  final String businessName;
  final String businessEmailAddress;
  final String businessWebsite;
  final String businessPhone;
  final String businessLogo;
  final String streetAddress;
  final String poBox;
  final String city;
  final String state;
  final String zipCode;

  @override
  _CreateBusiness3WidgetState createState() => _CreateBusiness3WidgetState();
}

class _CreateBusiness3WidgetState extends State<CreateBusiness3Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<NebraskaCountyRecord>>(
      stream: queryNebraskaCountyRecord(),
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
        List<NebraskaCountyRecord> createBusiness3NebraskaCountyRecordList =
            snapshot.data;
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
                    buttonSize: 50,
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
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
                            width: 45,
                            height: 45,
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
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Resource Directory',
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 4,
          ),
          backgroundColor: FlutterFlowTheme.primaryColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Create Business Profile',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.title2.override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 10, 20, 10),
                              child: Text(
                                'Here is what your business profile will look \nlike.  Please take a few moments to review.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.title2.override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: StreamBuilder<List<AgenciesRecord>>(
                                  stream: queryAgenciesRecord(
                                    queryBuilder: (agenciesRecord) =>
                                        agenciesRecord.where('AgencyName',
                                            isEqualTo: widget.businessName),
                                    singleRecord: true,
                                  ),
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
                                    List<AgenciesRecord>
                                        containerAgenciesRecordList =
                                        snapshot.data;
                                    // Return an empty Container when the document does not exist.
                                    if (snapshot.data.isEmpty) {
                                      return Container();
                                    }
                                    final containerAgenciesRecord =
                                        containerAgenciesRecordList.isNotEmpty
                                            ? containerAgenciesRecordList.first
                                            : null;
                                    return Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.86,
                                      height: 500,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 0),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                containerAgenciesRecord
                                                    .agencyAvatar,
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  containerAgenciesRecord
                                                      .agencyName,
                                                  style: FlutterFlowTheme.title1
                                                      .override(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 20,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 10, 10, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  containerAgenciesRecord
                                                      .streetAddress,
                                                  style: FlutterFlowTheme.title3
                                                      .override(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                Text(
                                                  containerAgenciesRecord.poBox,
                                                  style: FlutterFlowTheme.title3
                                                      .override(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 16,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 5, 0, 0),
                                                child: Text(
                                                  containerAgenciesRecord
                                                      .suiteApt,
                                                  style: FlutterFlowTheme.title3
                                                      .override(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 0, 0),
                                                  child: Text(
                                                    containerAgenciesRecord
                                                        .city,
                                                    style: FlutterFlowTheme
                                                        .title3
                                                        .override(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 0, 0),
                                                  child: Text(
                                                    ',',
                                                    style: FlutterFlowTheme
                                                        .title3
                                                        .override(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 0, 0),
                                                  child: Text(
                                                    containerAgenciesRecord
                                                        .state,
                                                    style: FlutterFlowTheme
                                                        .title3
                                                        .override(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 0, 0),
                                                  child: Text(
                                                    containerAgenciesRecord
                                                        .zipCode,
                                                    style: FlutterFlowTheme
                                                        .title3
                                                        .override(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Divider(
                                                height: 10,
                                                thickness: 1,
                                                indent: 10,
                                                endIndent: 10,
                                                color: Colors.black,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(20, 0, 20, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30,
                                                          borderWidth: 1,
                                                          buttonSize: 50,
                                                          icon: Icon(
                                                            Icons.phone,
                                                            color: Colors.black,
                                                            size: 30,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                        Text(
                                                          'Call',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1,
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30,
                                                          borderWidth: 1,
                                                          buttonSize: 50,
                                                          icon: Icon(
                                                            Icons.email,
                                                            color: Colors.black,
                                                            size: 30,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                        Text(
                                                          'Email',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1,
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30,
                                                          borderWidth: 1,
                                                          buttonSize: 50,
                                                          icon: FaIcon(
                                                            FontAwesomeIcons
                                                                .globe,
                                                            color: Colors.black,
                                                            size: 30,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                        Text(
                                                          'Web',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1,
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30,
                                                          borderWidth: 1,
                                                          buttonSize: 50,
                                                          icon: FaIcon(
                                                            FontAwesomeIcons
                                                                .mapMarkerAlt,
                                                            color: Colors.black,
                                                            size: 30,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                        Text(
                                                          'Map',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1,
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30,
                                                          borderWidth: 1,
                                                          buttonSize: 50,
                                                          icon: Icon(
                                                            Icons.event,
                                                            color: Colors.black,
                                                            size: 30,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                        Text(
                                                          'Events',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1,
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Divider(
                                            height: 10,
                                            thickness: 1,
                                            indent: 10,
                                            endIndent: 10,
                                            color: Colors.black,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 20, 0),
                                              child: DefaultTabController(
                                                length: 3,
                                                initialIndex: 0,
                                                child: Column(
                                                  children: [
                                                    TabBar(
                                                      labelColor:
                                                          FlutterFlowTheme
                                                              .primaryColor,
                                                      labelStyle:
                                                          FlutterFlowTheme
                                                              .bodyText1
                                                              .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                      ),
                                                      indicatorColor:
                                                          FlutterFlowTheme
                                                              .primaryColor,
                                                      tabs: [
                                                        Tab(
                                                          text: 'Profile',
                                                        ),
                                                        Tab(
                                                          text: 'Hours',
                                                        ),
                                                        Tab(
                                                          text: 'Offices',
                                                        )
                                                      ],
                                                    ),
                                                    Expanded(
                                                      child: TabBarView(
                                                        children: [
                                                          Text(
                                                            'Tab View 1',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 32,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Tab View 2',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 32,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Tab View 3',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 32,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0.55),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MainProfilePageWidget(),
                                      ),
                                    );
                                  },
                                  text: 'Complete profile setup',
                                  options: FFButtonOptions(
                                    width: 200,
                                    height: 45,
                                    color: Color(0xFFC70039),
                                    textStyle:
                                        FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
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
          ),
        );
      },
    );
  }
}
