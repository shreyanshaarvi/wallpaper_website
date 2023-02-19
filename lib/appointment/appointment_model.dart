import '../components/doctor_detail_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppointmentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for DoctorDetail component.
  late DoctorDetailModel doctorDetailModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    doctorDetailModel = createModel(context, () => DoctorDetailModel());
  }

  void dispose() {
    doctorDetailModel.dispose();
  }

  /// Additional helper methods are added here.

}
