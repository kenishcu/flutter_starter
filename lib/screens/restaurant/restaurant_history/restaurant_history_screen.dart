import 'package:flutter/material.dart';
import 'package:itrapp/screens/restaurant/restaurant_history/table_widget/paginated_data_table.dart';

import '../../../layout/history_layout.dart';

class RestaurantHistoryScreen extends StatefulWidget {

  const RestaurantHistoryScreen({Key? key}): super(key: key);

  @override
  _RestaurantHistoryScreenState createState() => _RestaurantHistoryScreenState();
}

class _RestaurantHistoryScreenState extends State<RestaurantHistoryScreen> {


  @override
  Widget build(BuildContext context) {

    return const HistoryLayout(
      childContent: PaginatedRestaurantDataTable(),
    );
  }
}