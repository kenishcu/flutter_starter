import 'package:flutter/material.dart';
import 'package:itrapp/screens/food_treatment/food_treatment_history/table_widget/paginated_data_table.dart';
import '../../../layout/history_layout_2.dart';

class FoodTreatmentHistoryScreen extends StatefulWidget {

  const FoodTreatmentHistoryScreen({Key? key}): super(key: key);

  @override
  _FoodTreatmentHistoryScreenState createState() => _FoodTreatmentHistoryScreenState();
}

class _FoodTreatmentHistoryScreenState extends State<FoodTreatmentHistoryScreen> {


  @override
  Widget build(BuildContext context) {
    return const HistoryLayout(
      childContent: PaginatedRestaurantDataTable(),
    );
  }
}