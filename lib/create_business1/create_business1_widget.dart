import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
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
  bool checkboxListTileValue1;
  bool checkboxListTileValue2;
  bool checkboxListTileValue3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Text(
                    'Create a business profile',
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
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: Text(
                    'Chose the primary county where your\nbusiness is based',
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowDropDown(
                          initialOption: dropDownValue ??= 'Choose your County',
                          options: [
                            'Adams',
                            'Antelope',
                            'Arthur',
                            'Banner',
                            'Lincoln',
                            '',
                            '',
                            '',
                            ''
                          ].toList(),
                          onChanged: (val) =>
                              setState(() => dropDownValue = val),
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: 50,
                          textStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                          ),
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: FlutterFlowTheme.tertiaryColor,
                            size: 15,
                          ),
                          fillColor: Color(0xFF1E37B8),
                          elevation: 2,
                          borderColor: Color(0x00FFFFFF),
                          borderWidth: 0,
                          borderRadius: 0,
                          margin: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                          hidesUnderline: true,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  child: Text(
                    'Please choose the counties you serve',
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
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: StreamBuilder<List<NebraskaCountyRecord>>(
                      stream: queryNebraskaCountyRecord(
                        queryBuilder: (nebraskaCountyRecord) =>
                            nebraskaCountyRecord.orderBy('CountyName'),
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
                        List<NebraskaCountyRecord>
                            listViewNebraskaCountyRecordList = snapshot.data;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewNebraskaCountyRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewNebraskaCountyRecord =
                                listViewNebraskaCountyRecordList[listViewIndex];
                            return Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Colors.black,
                              elevation: 4,
                              child: CheckboxListTile(
                                value: checkboxListTileValue1 ??= false,
                                onChanged: (newValue) => setState(
                                    () => checkboxListTileValue1 = newValue),
                                title: Text(
                                  widget.countyName,
                                  style: FlutterFlowTheme.title3.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                tileColor: Color(0xFF1E37B8),
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                              ),
                            );
                          },
                        );
                      },
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
