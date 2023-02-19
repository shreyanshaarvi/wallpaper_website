import '../components/doctor_detail_widget.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'doctor_details_model.dart';
export 'doctor_details_model.dart';

class DoctorDetailsWidget extends StatefulWidget {
  const DoctorDetailsWidget({Key? key}) : super(key: key);

  @override
  _DoctorDetailsWidgetState createState() => _DoctorDetailsWidgetState();
}

class _DoctorDetailsWidgetState extends State<DoctorDetailsWidget> {
  late DoctorDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DoctorDetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'DoctorDetails',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            iconTheme:
                IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
            automaticallyImplyLeading: true,
            title: Text(
              'Doctor Details',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.doctorDetailModel,
                      updateCallback: () => setState(() {}),
                      child: DoctorDetailWidget(),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                          child: Text(
                            'About',
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Text(
                        'Hello World',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                          child: Text(
                            'Available Days',
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    FlutterFlowCalendar(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      iconColor: FlutterFlowTheme.of(context).primaryText,
                      weekFormat: true,
                      weekStartsMonday: true,
                      onChange: (DateTimeRange? newSelectedDate) {
                        setState(
                            () => _model.calendarSelectedDay = newSelectedDate);
                      },
                      titleStyle: TextStyle(),
                      dayOfWeekStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      dateStyle: TextStyle(),
                      selectedDateStyle: TextStyle(),
                      inactiveDateStyle: TextStyle(),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                          child: Text(
                            'Time Slot',
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 10, 10),
                      child: FlutterFlowChoiceChips(
                        options: [
                          ChipData('09 :00 AM'),
                          ChipData('09 :00 AM'),
                          ChipData('09 :00 AM'),
                          ChipData('09 :00 AM'),
                          ChipData('09 :00 AM'),
                          ChipData('09 :00 AM'),
                          ChipData('09 :00 AM')
                        ],
                        onChanged: (val) => setState(
                            () => _model.choiceChipsValue = val?.first),
                        selectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).clickelementColor,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16,
                                  ),
                          iconColor: Colors.black,
                          iconSize: 18,
                          elevation: 4,
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: Colors.white,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFE3E7ED),
                                  ),
                          iconColor: Color(0xFFE3E7ED),
                          iconSize: 18,
                          elevation: 4,
                        ),
                        chipSpacing: 39,
                        rowSpacing: 14,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 10,
                            buttonSize: 60,
                            fillColor: Color(0xFF7DD8B8),
                            icon: Icon(
                              Icons.chat_bubble,
                              color: FlutterFlowTheme.of(context)
                                  .clickelementColor,
                              size: 30,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Book Appointment',
                            options: FFButtonOptions(
                              width: 219.4,
                              height: 52.6,
                              color: Color(0xFF0A6D61),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
