import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../template/template_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesCountyPageWidget extends StatefulWidget {
  const ServicesCountyPageWidget({Key key}) : super(key: key);

  @override
  _ServicesCountyPageWidgetState createState() =>
      _ServicesCountyPageWidgetState();
}

class _ServicesCountyPageWidgetState extends State<ServicesCountyPageWidget> {
  String dropDownValue;
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
            )
          ],
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
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Text(
                      'Choose your County',
                      style: FlutterFlowTheme.title2.override(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Text(
                      'Select the county you wish to see\nfrom the list below',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 14,
                      ),
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
                  FlutterFlowDropDown(
                    initialOption: dropDownValue ??= 'Choose your County',
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
                    onChanged: (val) => setState(() => dropDownValue = val),
                    width: MediaQuery.of(context).size.width * 0.89,
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
                    borderRadius: 8,
                    margin: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                    hidesUnderline: true,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TemplateWidget(
                            countyName: dropDownValue,
                          ),
                        ),
                      );
                    },
                    text: 'See Local Services',
                    options: FFButtonOptions(
                      width: 210,
                      height: 60,
                      color: Colors.white,
                      textStyle: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF1E37B8),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
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
