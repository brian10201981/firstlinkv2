import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CountyLandingPageWidget extends StatefulWidget {
  CountyLandingPageWidget({
    Key key,
    this.countyName,
  }) : super(key: key);

  final String countyName;

  @override
  _CountyLandingPageWidgetState createState() =>
      _CountyLandingPageWidgetState();
}

class _CountyLandingPageWidgetState extends State<CountyLandingPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Align(
          alignment: AlignmentDirectional(-1, 0),
          child: Text(
            widget.countyName,
            style: FlutterFlowTheme.title2.override(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://picsum.photos/seed/902/600',
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Text(
                            'County Seat:',
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: StreamBuilder<List<NebraskaCountyRecord>>(
                              stream: queryNebraskaCountyRecord(
                                queryBuilder: (nebraskaCountyRecord) =>
                                    nebraskaCountyRecord.where('CountyName',
                                        isEqualTo: widget.countyName),
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
                                List<NebraskaCountyRecord>
                                    textNebraskaCountyRecordList =
                                    snapshot.data;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data.isEmpty) {
                                  return Container();
                                }
                                final textNebraskaCountyRecord =
                                    textNebraskaCountyRecordList.isNotEmpty
                                        ? textNebraskaCountyRecordList.first
                                        : null;
                                return Text(
                                  textNebraskaCountyRecord.countySeat,
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              'Population:',
                              style: FlutterFlowTheme.title2.override(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: StreamBuilder<List<NebraskaCountyRecord>>(
                              stream: queryNebraskaCountyRecord(
                                queryBuilder: (nebraskaCountyRecord) =>
                                    nebraskaCountyRecord.where('CountyName',
                                        isEqualTo: widget.countyName),
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
                                List<NebraskaCountyRecord>
                                    textNebraskaCountyRecordList =
                                    snapshot.data;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data.isEmpty) {
                                  return Container();
                                }
                                final textNebraskaCountyRecord =
                                    textNebraskaCountyRecordList.isNotEmpty
                                        ? textNebraskaCountyRecordList.first
                                        : null;
                                return Text(
                                  textNebraskaCountyRecord.population
                                      .toString(),
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
