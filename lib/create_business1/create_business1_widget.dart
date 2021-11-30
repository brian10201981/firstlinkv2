import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateBusiness1Widget extends StatefulWidget {
  const CreateBusiness1Widget({
    Key key,
    this.countyName,
  }) : super(key: key);

  final String countyName;

  @override
  _CreateBusiness1WidgetState createState() => _CreateBusiness1WidgetState();
}

class _CreateBusiness1WidgetState extends State<CreateBusiness1Widget> {
  String dropDownValue;
  TextEditingController cityController;
  TextEditingController poBoxController;
  TextEditingController streetAddressController;
  TextEditingController suiteAptController;
  bool _loadingButton = false;
  TextEditingController zipCodeController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    cityController = TextEditingController();
    poBoxController = TextEditingController();
    streetAddressController = TextEditingController();
    suiteAptController = TextEditingController();
    zipCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: Text(
                          'If you have created a profile already, make\nsure to edit that profile from the \"My \nBusiness list.',
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 500,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.primaryColor,
                              ),
                              child: Container(
                                height: 500,
                                child: Stack(
                                  children: [
                                    TextFormField(
                                      controller: streetAddressController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Street Address',
                                        labelStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF95A1AC),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        hintText:
                                            'Enter your street address here...',
                                        hintStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF95A1AC),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF1E37B8),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF1E37B8),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFF1E37B8),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16, 24, 0, 24),
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 70, 0, 0),
                                      child: TextFormField(
                                        controller: suiteAptController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Suite/Apt#',
                                          labelStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          hintText:
                                              'Enter your suite/apt# here...',
                                          hintStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1E37B8),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1E37B8),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFF1E37B8),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 24, 0, 24),
                                        ),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 140, 0, 0),
                                      child: TextFormField(
                                        controller: poBoxController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'P.O. Box',
                                          labelStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          hintText:
                                              'Enter your p.o. box here...',
                                          hintStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1E37B8),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1E37B8),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFF1E37B8),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 24, 0, 24),
                                        ),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 210, 0, 0),
                                      child: TextFormField(
                                        controller: cityController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'City',
                                          labelStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          hintText: 'Enter your city here...',
                                          hintStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1E37B8),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1E37B8),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFF1E37B8),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 24, 0, 24),
                                        ),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 280, 0, 0),
                                      child: FlutterFlowDropDown(
                                        options: ['Nebraska'].toList(),
                                        onChanged: (val) =>
                                            setState(() => dropDownValue = val),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 55,
                                        textStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                        fillColor: Color(0xFF1E37B8),
                                        elevation: 2,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0,
                                        borderRadius: 8,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            8, 4, 8, 4),
                                        hidesUnderline: true,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0.9),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          setState(() => _loadingButton = true);
                                          try {
                                            final agenciesCreateData =
                                                createAgenciesRecordData(
                                              dateCreated: getCurrentTimestamp,
                                              createdBy: currentUserUid,
                                              agencyName: '',
                                            );
                                            await AgenciesRecord.collection
                                                .doc()
                                                .set(agenciesCreateData);
                                          } finally {
                                            setState(
                                                () => _loadingButton = false);
                                          }
                                        },
                                        text: 'Next Step',
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 45,
                                          color: Color(0xFFC70039),
                                          textStyle: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 12,
                                        ),
                                        loading: _loadingButton,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 350, 0, 0),
                                      child: TextFormField(
                                        controller: zipCodeController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Zip Code',
                                          labelStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          hintText:
                                              'Enter your zip code here...',
                                          hintStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1E37B8),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF1E37B8),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFF1E37B8),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 24, 0, 24),
                                        ),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
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
  }
}
