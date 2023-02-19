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

class DoctorDetailsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for DoctorDetail component.
  late DoctorDetailModel doctorDetailModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    doctorDetailModel = createModel(context, () => DoctorDetailModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    doctorDetailModel.dispose();
  }

  /// Additional helper methods are added here.

}
