import 'package:flutter/cupertino.dart';
import 'package:itrapp/screens/medical_history/widgets/date_selection_widget.dart';
import 'package:itrapp/screens/medical_history/widgets/history_board_widget.dart';

import '../../layout/main_layout.dart';

class MedicalHistoryScreen extends StatefulWidget {

  const MedicalHistoryScreen({Key? key}): super(key: key);

  @override
  _MedicalHistoryScreenState createState() => _MedicalHistoryScreenState();
}

class _MedicalHistoryScreenState extends State<MedicalHistoryScreen> {

  Widget _childLeftContent() {
    return const HistoryBoardWidget();
  }

  Widget _childRightContent() {
    return const DateSelectionWidget();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      childLeftContent: _childLeftContent(),
      childRightContent: _childRightContent(),
    );
  }
}