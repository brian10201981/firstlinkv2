import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../edit_profile/edit_profile_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../home_page/home_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EditMyBusinessWidget extends StatefulWidget {
  const EditMyBusinessWidget({
    Key key,
    this.businessName,
    this.businessUid,
  }) : super(key: key);

  final String businessName;
  final DocumentReference businessUid;

  @override
  _EditMyBusinessWidgetState createState() => _EditMyBusinessWidgetState();
}

class _EditMyBusinessWidgetState extends State<EditMyBusinessWidget> {
  String dropDownValue10;
  String dropDownValue8;
  String dropDownValue9;
  String dropDownValue2;
  String dropDownValue3;
  String dropDownValue4;
  String dropDownValue5;
  String dropDownValue6;
  String dropDownValue7;
  bool switchListTileValue1;
  String dropDownValue11;
  String dropDownValue12;
  String dropDownValue13;
  bool switchListTileValue2;
  String dropDownValue1;
  String uploadedFileUrl = '';
  TextEditingController businessEditNameController1;
  TextEditingController businessEditPhoneController;
  TextEditingController businessEditNameController2;
  TextEditingController businessEditNameController3;
  bool _loadingButton1 = false;
  String dropDownValue14;
  bool switchListTileValue3;
  bool _loadingButton2 = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
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
                          padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                mainAxisSize: MainAxisSize.max,
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
                                                        Navigator.pop(context);
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
                                      'Hello World',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Hello World',
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
                                      'Hello World',
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
                          if (scaffoldKey.currentState.isDrawerOpen ||
                              scaffoldKey.currentState.isEndDrawerOpen) {
                            Navigator.pop(context);
                          }
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
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfileWidget(),
                            ),
                          );
                          if (scaffoldKey.currentState.isDrawerOpen ||
                              scaffoldKey.currentState.isEndDrawerOpen) {
                            Navigator.pop(context);
                          }
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Edit',
                        style: FlutterFlowTheme.title2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: StreamBuilder<AgenciesRecord>(
                        stream: AgenciesRecord.getDocument(widget.businessUid),
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
                          final textAgenciesRecord = snapshot.data;
                          return Text(
                            widget.businessName,
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.89,
                        height: 600,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.primaryColor,
                        ),
                        child: StreamBuilder<AgenciesRecord>(
                          stream:
                              AgenciesRecord.getDocument(widget.businessUid),
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
                            final tabBarAgenciesRecord = snapshot.data;
                            return DefaultTabController(
                              length: 5,
                              initialIndex: 0,
                              child: Column(
                                children: [
                                  TabBar(
                                    isScrollable: true,
                                    labelColor: Colors.white,
                                    labelStyle: FlutterFlowTheme.bodyText1,
                                    indicatorColor: Colors.white,
                                    tabs: [
                                      Tab(
                                        text: 'Info',
                                      ),
                                      Tab(
                                        text: 'Hours',
                                      ),
                                      Tab(
                                        text: 'Offices',
                                      ),
                                      Tab(
                                        text: 'County',
                                      ),
                                      Tab(
                                        text: 'Example 5',
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Business info',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 5,
                                                                    10, 0),
                                                        child: TextFormField(
                                                          controller:
                                                              businessEditNameController1 ??=
                                                                  TextEditingController(
                                                            text:
                                                                tabBarAgenciesRecord
                                                                    .agencyName,
                                                          ),
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'Business Name',
                                                            labelStyle:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color: Color(
                                                                  0xFF95A1AC),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                            hintText:
                                                                'Enter your business name here...',
                                                            hintStyle:
                                                                FlutterFlowTheme
                                                                    .bodyText1
                                                                    .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color: Color(
                                                                  0xFF95A1AC),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFF1E37B8),
                                                                width: 2,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFF1E37B8),
                                                                width: 2,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            filled: true,
                                                            fillColor: Color(
                                                                0xFF1E37B8),
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        24,
                                                                        0,
                                                                        24),
                                                          ),
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Lexend Deca',
                                                            color: Colors.white,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                          validator: (val) {
                                                            if (val.isEmpty) {
                                                              return 'Business Name Required';
                                                            }

                                                            return null;
                                                          },
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 10,
                                                                  10, 0),
                                                      child: TextFormField(
                                                        controller:
                                                            businessEditPhoneController ??=
                                                                TextEditingController(
                                                          text:
                                                              tabBarAgenciesRecord
                                                                  .phoneNumber,
                                                        ),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              'Phone Number',
                                                          labelStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Lexend Deca',
                                                            color: Color(
                                                                0xFF95A1AC),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                          hintText:
                                                              'Enter your phone number here...',
                                                          hintStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Lexend Deca',
                                                            color: Color(
                                                                0xFF95A1AC),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF1E37B8),
                                                              width: 2,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF1E37B8),
                                                              width: 2,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              Color(0xFF1E37B8),
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      24,
                                                                      0,
                                                                      24),
                                                        ),
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                        validator: (val) {
                                                          if (val.isEmpty) {
                                                            return 'Business Name Required';
                                                          }

                                                          return null;
                                                        },
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 10,
                                                                  10, 0),
                                                      child: TextFormField(
                                                        controller:
                                                            businessEditNameController2 ??=
                                                                TextEditingController(
                                                          text:
                                                              tabBarAgenciesRecord
                                                                  .emailAddress,
                                                        ),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              'Email Address',
                                                          labelStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Lexend Deca',
                                                            color: Color(
                                                                0xFF95A1AC),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                          hintText:
                                                              'Update your email here...',
                                                          hintStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Lexend Deca',
                                                            color: Color(
                                                                0xFF95A1AC),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF1E37B8),
                                                              width: 2,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF1E37B8),
                                                              width: 2,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              Color(0xFF1E37B8),
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      24,
                                                                      0,
                                                                      24),
                                                        ),
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                        validator: (val) {
                                                          if (val.isEmpty) {
                                                            return 'Business Name Required';
                                                          }

                                                          return null;
                                                        },
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 10,
                                                                  10, 0),
                                                      child: TextFormField(
                                                        controller:
                                                            businessEditNameController3 ??=
                                                                TextEditingController(
                                                          text: tabBarAgenciesRecord
                                                              .websiteAddress,
                                                        ),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              'Website Address',
                                                          labelStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Lexend Deca',
                                                            color: Color(
                                                                0xFF95A1AC),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                          hintText:
                                                              'Enter your first name here...',
                                                          hintStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Lexend Deca',
                                                            color: Color(
                                                                0xFF95A1AC),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF1E37B8),
                                                              width: 2,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF1E37B8),
                                                              width: 2,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              Color(0xFF1E37B8),
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      24,
                                                                      0,
                                                                      24),
                                                        ),
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                        validator: (val) {
                                                          if (val.isEmpty) {
                                                            return 'Business Name Required';
                                                          }

                                                          return null;
                                                        },
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Text(
                                                      'Logo',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            final selectedMedia =
                                                                await selectMediaWithSourceBottomSheet(
                                                              context: context,
                                                              allowPhoto: true,
                                                              pickerFontFamily:
                                                                  'Montserrat',
                                                            );
                                                            if (selectedMedia !=
                                                                    null &&
                                                                validateFileFormat(
                                                                    selectedMedia
                                                                        .storagePath,
                                                                    context)) {
                                                              showUploadMessage(
                                                                  context,
                                                                  'Uploading file...',
                                                                  showLoading:
                                                                      true);
                                                              final downloadUrl =
                                                                  await uploadData(
                                                                      selectedMedia
                                                                          .storagePath,
                                                                      selectedMedia
                                                                          .bytes);
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .hideCurrentSnackBar();
                                                              if (downloadUrl !=
                                                                  null) {
                                                                setState(() =>
                                                                    uploadedFileUrl =
                                                                        downloadUrl);
                                                                showUploadMessage(
                                                                    context,
                                                                    'Success!');
                                                              } else {
                                                                showUploadMessage(
                                                                    context,
                                                                    'Failed to upload media');
                                                                return;
                                                              }
                                                            }
                                                          },
                                                          child: Container(
                                                            width: 120,
                                                            height: 120,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                Image.network(
                                                              tabBarAgenciesRecord
                                                                  .agencyAvatar,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 1.24),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(40,
                                                                      40, 0, 0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30,
                                                            borderWidth: 1,
                                                            buttonSize: 40,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .cog,
                                                              color:
                                                                  Colors.white,
                                                              size: 20,
                                                            ),
                                                            onPressed: () {
                                                              print(
                                                                  'IconButton pressed ...');
                                                            },
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: Text(
                                                      'Location',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  FlutterFlowDropDown(
                                                    initialOption:
                                                        dropDownValue1 ??=
                                                            'Choose your County',
                                                    options: [
                                                      'Adams',
                                                      'Antelope',
                                                      'Arthur',
                                                      'Banner',
                                                      'Blaine',
                                                      'Boone',
                                                      'Box Butte',
                                                      'Boyd',
                                                      'Brown',
                                                      'Buffalo',
                                                      'Burt',
                                                      'Butler',
                                                      'Cass',
                                                      'Cedar',
                                                      'Chase',
                                                      'Cherry',
                                                      'Cheyenne',
                                                      'Clay',
                                                      'Colfax',
                                                      'Cuming',
                                                      'Custer',
                                                      'Dakota',
                                                      'Dawes',
                                                      'Dawson',
                                                      'Deuel',
                                                      'Dixon',
                                                      'Dodge',
                                                      'Douglas',
                                                      'Dundy',
                                                      'Fillmore',
                                                      'Franklin',
                                                      'Frontier',
                                                      'Furnas',
                                                      'Gage',
                                                      'Garden',
                                                      'Garfield',
                                                      'Gosper',
                                                      'Grant',
                                                      'Greeley',
                                                      'Hall',
                                                      'Hamilton',
                                                      'Harlan',
                                                      'Hayes',
                                                      'Hitchcock',
                                                      'Holt',
                                                      'Hooker',
                                                      'Howard',
                                                      'Jefferson',
                                                      'Johnson',
                                                      'Kearney',
                                                      'Keith',
                                                      'Keya Paha',
                                                      'Kimball',
                                                      'Knox',
                                                      'Lancaster',
                                                      'Lincoln',
                                                      'Logan',
                                                      'Loup',
                                                      'McPherson',
                                                      'Madison',
                                                      'Merrick',
                                                      'Morrill',
                                                      'Nance',
                                                      'Nemaha',
                                                      'Nuckolls',
                                                      'Otoe',
                                                      'Pawnee',
                                                      'Perkins',
                                                      'Phelps',
                                                      'Pierce',
                                                      'Platte',
                                                      'Polk',
                                                      'Red Willow',
                                                      'Richardson',
                                                      'Rock',
                                                      'Saline',
                                                      'Sarpy',
                                                      'Saunders',
                                                      'Scotts Bluff',
                                                      'Seward',
                                                      'Sheridan',
                                                      'Sherman',
                                                      'Sioux',
                                                      'Stanton',
                                                      'Thayer',
                                                      'Thomas',
                                                      'Thurston',
                                                      'Valley',
                                                      'Washington',
                                                      'Wayne',
                                                      'Webster',
                                                      'Wheeler',
                                                      'York'
                                                    ].toList(),
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            dropDownValue1 =
                                                                val),
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.89,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Colors.white,
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: FlutterFlowTheme
                                                          .tertiaryColor,
                                                      size: 15,
                                                    ),
                                                    fillColor:
                                                        Color(0xFF1E37B8),
                                                    elevation: 2,
                                                    borderColor:
                                                        Color(0x00FFFFFF),
                                                    borderWidth: 0,
                                                    borderRadius: 8,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 4, 8, 4),
                                                    hidesUnderline: true,
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.55),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    0, 25),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            setState(() =>
                                                                _loadingButton1 =
                                                                    true);
                                                            try {
                                                              final agenciesUpdateData =
                                                                  createAgenciesRecordData(
                                                                agencyName: '',
                                                              );
                                                              await tabBarAgenciesRecord
                                                                  .reference
                                                                  .update(
                                                                      agenciesUpdateData);
                                                            } finally {
                                                              setState(() =>
                                                                  _loadingButton1 =
                                                                      false);
                                                            }
                                                          },
                                                          text:
                                                              'Update Business',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 170,
                                                            height: 45,
                                                            color: Color(
                                                                0xFFC70039),
                                                            textStyle:
                                                                FlutterFlowTheme
                                                                    .subtitle2
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1,
                                                            ),
                                                            borderRadius: 12,
                                                          ),
                                                          loading:
                                                              _loadingButton1,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Business Hours',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 5),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 10),
                                                          child: Text(
                                                            'Saturday',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .title3
                                                                    .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Open',
                                                        style: FlutterFlowTheme
                                                            .title3
                                                            .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child:
                                                            FlutterFlowDropDown(
                                                          options: [
                                                            '01',
                                                            '02',
                                                            '03',
                                                            '04',
                                                            '05',
                                                            '06',
                                                            '07',
                                                            '08',
                                                            '09',
                                                            '10',
                                                            '11',
                                                            '12'
                                                          ].toList(),
                                                          onChanged: (val) =>
                                                              setState(() =>
                                                                  dropDownValue2 =
                                                                      val),
                                                          width: 80,
                                                          height: 50,
                                                          textStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          fillColor:
                                                              Colors.white,
                                                          elevation: 2,
                                                          borderColor:
                                                              Colors.white,
                                                          borderWidth: 1,
                                                          borderRadius: 0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      4, 12, 4),
                                                          hidesUnderline: true,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FlutterFlowDropDown(
                                                          options: [
                                                            '00',
                                                            '15',
                                                            '30',
                                                            '45'
                                                          ].toList(),
                                                          onChanged: (val) =>
                                                              setState(() =>
                                                                  dropDownValue3 =
                                                                      val),
                                                          width: 80,
                                                          height: 50,
                                                          textStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          fillColor:
                                                              Colors.white,
                                                          elevation: 2,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0,
                                                          borderRadius: 0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      4, 12, 4),
                                                          hidesUnderline: true,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child:
                                                            FlutterFlowDropDown(
                                                          options: ['AM', 'PM']
                                                              .toList(),
                                                          onChanged: (val) =>
                                                              setState(() =>
                                                                  dropDownValue4 =
                                                                      val),
                                                          width: 80,
                                                          height: 50,
                                                          textStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          fillColor:
                                                              Colors.white,
                                                          elevation: 2,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0,
                                                          borderRadius: 0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      4, 12, 4),
                                                          hidesUnderline: true,
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Close',
                                                      style: FlutterFlowTheme
                                                          .title3
                                                          .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child:
                                                          FlutterFlowDropDown(
                                                        options: [
                                                          '01',
                                                          '02',
                                                          '03',
                                                          '04',
                                                          '05',
                                                          '06',
                                                          '07',
                                                          '08',
                                                          '09',
                                                          '10',
                                                          '11',
                                                          '12'
                                                        ].toList(),
                                                        onChanged: (val) =>
                                                            setState(() =>
                                                                dropDownValue5 =
                                                                    val),
                                                        width: 80,
                                                        height: 50,
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .bodyText1
                                                                .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                        ),
                                                        fillColor: Colors.white,
                                                        elevation: 2,
                                                        borderColor:
                                                            Colors.white,
                                                        borderWidth: 1,
                                                        borderRadius: 0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 4,
                                                                    12, 4),
                                                        hidesUnderline: true,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child:
                                                          FlutterFlowDropDown(
                                                        options: [
                                                          '00',
                                                          '15',
                                                          '30',
                                                          '45'
                                                        ].toList(),
                                                        onChanged: (val) =>
                                                            setState(() =>
                                                                dropDownValue6 =
                                                                    val),
                                                        width: 80,
                                                        height: 50,
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .bodyText1
                                                                .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                        ),
                                                        fillColor: Colors.white,
                                                        elevation: 2,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0,
                                                        borderRadius: 0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 4,
                                                                    12, 4),
                                                        hidesUnderline: true,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child:
                                                          FlutterFlowDropDown(
                                                        options: ['AM', 'PM']
                                                            .toList(),
                                                        onChanged: (val) =>
                                                            setState(() =>
                                                                dropDownValue7 =
                                                                    val),
                                                        width: 80,
                                                        height: 50,
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .bodyText1
                                                                .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                        ),
                                                        fillColor: Colors.white,
                                                        elevation: 2,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0,
                                                        borderRadius: 0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 4,
                                                                    12, 4),
                                                        hidesUnderline: true,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: SwitchListTile(
                                                      value:
                                                          switchListTileValue1 ??=
                                                              false,
                                                      onChanged: (newValue) =>
                                                          setState(() =>
                                                              switchListTileValue1 =
                                                                  newValue),
                                                      title: Text(
                                                        'Closed all day',
                                                        style: FlutterFlowTheme
                                                            .title3
                                                            .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      tileColor:
                                                          Color(0x00FFFFFF),
                                                      activeColor: Colors.white,
                                                      activeTrackColor:
                                                          Colors.white,
                                                      dense: false,
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .trailing,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 5),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 10),
                                                          child: Text(
                                                            'Sunday',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .title3
                                                                    .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Open',
                                                        style: FlutterFlowTheme
                                                            .title3
                                                            .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child:
                                                            FlutterFlowDropDown(
                                                          options: [
                                                            '01',
                                                            '02',
                                                            '03',
                                                            '04',
                                                            '05',
                                                            '06',
                                                            '07',
                                                            '08',
                                                            '09',
                                                            '10',
                                                            '11',
                                                            '12'
                                                          ].toList(),
                                                          onChanged: (val) =>
                                                              setState(() =>
                                                                  dropDownValue8 =
                                                                      val),
                                                          width: 80,
                                                          height: 50,
                                                          textStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          fillColor:
                                                              Colors.white,
                                                          elevation: 2,
                                                          borderColor:
                                                              Colors.white,
                                                          borderWidth: 1,
                                                          borderRadius: 0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      4, 12, 4),
                                                          hidesUnderline: true,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FlutterFlowDropDown(
                                                          options: [
                                                            '00',
                                                            '15',
                                                            '30',
                                                            '45'
                                                          ].toList(),
                                                          onChanged: (val) =>
                                                              setState(() =>
                                                                  dropDownValue9 =
                                                                      val),
                                                          width: 80,
                                                          height: 50,
                                                          textStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          fillColor:
                                                              Colors.white,
                                                          elevation: 2,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0,
                                                          borderRadius: 0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      4, 12, 4),
                                                          hidesUnderline: true,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child:
                                                            FlutterFlowDropDown(
                                                          options: ['AM', 'PM']
                                                              .toList(),
                                                          onChanged: (val) =>
                                                              setState(() =>
                                                                  dropDownValue10 =
                                                                      val),
                                                          width: 80,
                                                          height: 50,
                                                          textStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          fillColor:
                                                              Colors.white,
                                                          elevation: 2,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0,
                                                          borderRadius: 0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      4, 12, 4),
                                                          hidesUnderline: true,
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Close',
                                                      style: FlutterFlowTheme
                                                          .title3
                                                          .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child:
                                                          FlutterFlowDropDown(
                                                        options: [
                                                          '01',
                                                          '02',
                                                          '03',
                                                          '04',
                                                          '05',
                                                          '06',
                                                          '07',
                                                          '08',
                                                          '09',
                                                          '10',
                                                          '11',
                                                          '12'
                                                        ].toList(),
                                                        onChanged: (val) =>
                                                            setState(() =>
                                                                dropDownValue11 =
                                                                    val),
                                                        width: 80,
                                                        height: 50,
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .bodyText1
                                                                .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                        ),
                                                        fillColor: Colors.white,
                                                        elevation: 2,
                                                        borderColor:
                                                            Colors.white,
                                                        borderWidth: 1,
                                                        borderRadius: 0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 4,
                                                                    12, 4),
                                                        hidesUnderline: true,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child:
                                                          FlutterFlowDropDown(
                                                        options: [
                                                          '00',
                                                          '15',
                                                          '30',
                                                          '45'
                                                        ].toList(),
                                                        onChanged: (val) =>
                                                            setState(() =>
                                                                dropDownValue12 =
                                                                    val),
                                                        width: 80,
                                                        height: 50,
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .bodyText1
                                                                .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                        ),
                                                        fillColor: Colors.white,
                                                        elevation: 2,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0,
                                                        borderRadius: 0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 4,
                                                                    12, 4),
                                                        hidesUnderline: true,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child:
                                                          FlutterFlowDropDown(
                                                        options: ['AM', 'PM']
                                                            .toList(),
                                                        onChanged: (val) =>
                                                            setState(() =>
                                                                dropDownValue13 =
                                                                    val),
                                                        width: 80,
                                                        height: 50,
                                                        textStyle:
                                                            FlutterFlowTheme
                                                                .bodyText1
                                                                .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                        ),
                                                        fillColor: Colors.white,
                                                        elevation: 2,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0,
                                                        borderRadius: 0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 4,
                                                                    12, 4),
                                                        hidesUnderline: true,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: SwitchListTile(
                                                      value:
                                                          switchListTileValue2 ??=
                                                              false,
                                                      onChanged: (newValue) =>
                                                          setState(() =>
                                                              switchListTileValue2 =
                                                                  newValue),
                                                      title: Text(
                                                        'Closed all day',
                                                        style: FlutterFlowTheme
                                                            .title3
                                                            .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      tileColor:
                                                          Color(0x00FFFFFF),
                                                      activeColor: Colors.white,
                                                      activeTrackColor:
                                                          Colors.white,
                                                      dense: false,
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .trailing,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Main Office Location',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Main Office Location',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 5),
                                                    child: Text(
                                                      'Primary Location',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  FlutterFlowDropDown(
                                                    initialOption:
                                                        dropDownValue14 ??=
                                                            'Choose your County',
                                                    options: [
                                                      'Adams',
                                                      'Antelope',
                                                      'Arthur',
                                                      'Banner',
                                                      'Blaine',
                                                      'Boone',
                                                      'Box Butte',
                                                      'Boyd',
                                                      'Brown',
                                                      'Buffalo',
                                                      'Burt',
                                                      'Butler',
                                                      'Cass',
                                                      'Cedar',
                                                      'Chase',
                                                      'Cherry',
                                                      'Cheyenne',
                                                      'Clay',
                                                      'Colfax',
                                                      'Cuming',
                                                      'Custer',
                                                      'Dakota',
                                                      'Dawes',
                                                      'Dawson',
                                                      'Deuel',
                                                      'Dixon',
                                                      'Dodge',
                                                      'Douglas',
                                                      'Dundy',
                                                      'Fillmore',
                                                      'Franklin',
                                                      'Frontier',
                                                      'Furnas',
                                                      'Gage',
                                                      'Garden',
                                                      'Garfield',
                                                      'Gosper',
                                                      'Grant',
                                                      'Greeley',
                                                      'Hall',
                                                      'Hamilton',
                                                      'Harlan',
                                                      'Hayes',
                                                      'Hitchcock',
                                                      'Holt',
                                                      'Hooker',
                                                      'Howard',
                                                      'Jefferson',
                                                      'Johnson',
                                                      'Kearney',
                                                      'Keith',
                                                      'Keya Paha',
                                                      'Kimball',
                                                      'Knox',
                                                      'Lancaster',
                                                      'Lincoln',
                                                      'Logan',
                                                      'Loup',
                                                      'McPherson',
                                                      'Madison',
                                                      'Merrick',
                                                      'Morrill',
                                                      'Nance',
                                                      'Nemaha',
                                                      'Nuckolls',
                                                      'Otoe',
                                                      'Pawnee',
                                                      'Perkins',
                                                      'Phelps',
                                                      'Pierce',
                                                      'Platte',
                                                      'Polk',
                                                      'Red Willow',
                                                      'Richardson',
                                                      'Rock',
                                                      'Saline',
                                                      'Sarpy',
                                                      'Saunders',
                                                      'Scotts Bluff',
                                                      'Seward',
                                                      'Sheridan',
                                                      'Sherman',
                                                      'Sioux',
                                                      'Stanton',
                                                      'Thayer',
                                                      'Thomas',
                                                      'Thurston',
                                                      'Valley',
                                                      'Washington',
                                                      'Wayne',
                                                      'Webster',
                                                      'Wheeler',
                                                      'York'
                                                    ].toList(),
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            dropDownValue14 =
                                                                val),
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.89,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Colors.white,
                                                    ),
                                                    icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: FlutterFlowTheme
                                                          .tertiaryColor,
                                                      size: 15,
                                                    ),
                                                    fillColor:
                                                        Color(0xFF1E37B8),
                                                    elevation: 2,
                                                    borderColor:
                                                        Color(0x00FFFFFF),
                                                    borderWidth: 0,
                                                    borderRadius: 8,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 4, 8, 4),
                                                    hidesUnderline: true,
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: Text(
                                                      'Edit the primary county where you do \nbusiness',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 5),
                                                    child: Text(
                                                      'Other Counties',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: Text(
                                                      'Choose all the counties you do business in',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: StreamBuilder<
                                                        List<
                                                            NebraskaCountyRecord>>(
                                                      stream:
                                                          queryNebraskaCountyRecord(),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<NebraskaCountyRecord>
                                                            columnNebraskaCountyRecordList =
                                                            snapshot.data;
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: List.generate(
                                                              columnNebraskaCountyRecordList
                                                                  .length,
                                                              (columnIndex) {
                                                            final columnNebraskaCountyRecord =
                                                                columnNebraskaCountyRecordList[
                                                                    columnIndex];
                                                            return Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.89,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .transparent,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    SwitchListTile(
                                                                  value:
                                                                      switchListTileValue3 ??=
                                                                          false,
                                                                  onChanged: (newValue) =>
                                                                      setState(() =>
                                                                          switchListTileValue3 =
                                                                              newValue),
                                                                  title: Text(
                                                                    columnNebraskaCountyRecord
                                                                        .countyName,
                                                                    style: FlutterFlowTheme
                                                                        .title3
                                                                        .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                  tileColor: Color(
                                                                      0x00F5F5F5),
                                                                  activeColor:
                                                                      Colors
                                                                          .white,
                                                                  dense: false,
                                                                  controlAffinity:
                                                                      ListTileControlAffinity
                                                                          .trailing,
                                                                ),
                                                              ),
                                                            );
                                                          }),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.55),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    0, 25),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            setState(() =>
                                                                _loadingButton2 =
                                                                    true);
                                                            try {
                                                              final agenciesUpdateData =
                                                                  createAgenciesRecordData(
                                                                agencyName: '',
                                                              );
                                                              await tabBarAgenciesRecord
                                                                  .reference
                                                                  .update(
                                                                      agenciesUpdateData);
                                                            } finally {
                                                              setState(() =>
                                                                  _loadingButton2 =
                                                                      false);
                                                            }
                                                          },
                                                          text:
                                                              'Update Location',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 170,
                                                            height: 45,
                                                            color: Color(
                                                                0xFFC70039),
                                                            textStyle:
                                                                FlutterFlowTheme
                                                                    .subtitle2
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1,
                                                            ),
                                                            borderRadius: 12,
                                                          ),
                                                          loading:
                                                              _loadingButton2,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          'Tab View 5',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 32,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
