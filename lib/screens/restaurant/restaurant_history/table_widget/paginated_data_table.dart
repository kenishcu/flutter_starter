import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'custom_pager.dart';
import 'data_source.dart';

class PaginatedRestaurantDataTable extends StatefulWidget {

  const PaginatedRestaurantDataTable({Key? key}) : super(key: key);

  @override
  _PaginatedRestaurantDataTableState createState() => _PaginatedRestaurantDataTableState();
}

class _PaginatedRestaurantDataTableState extends State<PaginatedRestaurantDataTable> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  bool _sortAscending = true;
  int? _sortColumnIndex;
  DessertDataSourceAsync? _dessertsDataSource;
  final PaginatorController _controller = PaginatorController();

  bool _dataSourceLoading = false;
  int _initialRow = 0;

  @override
  void didChangeDependencies() {
    // initState is to early to access route options, context is invalid at that stage
    _dessertsDataSource ??= DessertDataSourceAsync(context);

    // if (getCurrentRouteOption(context) == goToLast) {
    //   _dataSourceLoading = true;
    //   _dessertsDataSource!.getTotalRecords().then((count) => setState(() {
    //     _initialRow = count - _rowsPerPage;
    //     _dataSourceLoading = false;
    //   }));
    // }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _dessertsDataSource!.dispose();
    super.dispose();
  }

  List<DataColumn> get _columns {
    return [
      DataColumn(
        label: SizedBox(
          width: 50,
          child: Center(
            child: Text(AppLocalizations.of(context).getTranslate('number_of')),
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 100,
          child: Center(
            child: Text(AppLocalizations.of(context).getTranslate('invoice_number')),
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 400,
          child: Center(
            child: Text(AppLocalizations.of(context).getTranslate('room')),
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 100,
          child: Center(
            child: Text(AppLocalizations.of(context).getTranslate('meal')),
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 250,
          child: Center(
            child: Text(AppLocalizations.of(context).getTranslate('payment_method')),
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 200,
          child: Center(
            child: Text(AppLocalizations.of(context).getTranslate('booking_time')),
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 200,
          child: Center(
            child: Text(AppLocalizations.of(context).getTranslate('used_date')),
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 200,
          child: Center(
            child: Text(AppLocalizations.of(context).getTranslate('status')),
          ),
        ),
      ),
      DataColumn(
        label: SizedBox(
          width: 200,
          child: Center(
            child: Text(AppLocalizations.of(context).getTranslate('detail')),
          ),
        ),
      ),
    ];
  }

  // Use global key to avoid rebuilding state of _TitledRangeSelector
  // upon AsyncPaginatedDataTable2 refreshes, e.g. upon page switches
  final GlobalKey _rangeSelectorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // Last ppage example uses extra API call to get the number of items in datasource
    if (_dataSourceLoading) return const SizedBox();

    return Stack(alignment: Alignment.bottomCenter, children: [
      AsyncPaginatedDataTable2(
          horizontalMargin: 20,
          checkboxHorizontalMargin: 12,
          columnSpacing: 0,
          wrapInCard: false,
          header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                  Text(AppLocalizations.of(context).getTranslate('order_history'))
              ]),
          rowsPerPage: _rowsPerPage,
          // Default - do nothing, autoRows - goToLast, other - goToFirst
          minWidth: 800,
          fit: FlexFit.tight,
          border: TableBorder(
              top: const BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.grey[300]!),
              left: BorderSide(color: Colors.grey[300]!),
              right: BorderSide(color: Colors.grey[300]!),
              verticalInside: BorderSide(color: Colors.grey[300]!),
              horizontalInside: const BorderSide(color: Colors.grey, width: 1)),
          onRowsPerPageChanged: (value) {
            // No need to wrap into setState, it will be called inside the widget
            // and trigger rebuild
            //setState(() {
            print('Row per page changed to $value');
            _rowsPerPage = value!;
            //});
          },
          initialFirstRowIndex: _initialRow,
          onPageChanged: (rowIndex) {
            //print(rowIndex / _rowsPerPage);
          },
          sortColumnIndex: _sortColumnIndex,
          sortAscending: _sortAscending,
          sortArrowIcon: Icons.keyboard_arrow_up,
          sortArrowAnimationDuration: const Duration(milliseconds: 0),
          controller: _controller,
          columns: _columns,
          empty: Center(
              child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.grey[200],
                  child: const Text('No data'))),
          loading: _Loading(),
          errorBuilder: (e) => _ErrorAndRetry(
              e.toString(), () => _dessertsDataSource!.refreshDatasource()),
          source: _dessertsDataSource!),
    ]);
  }
}

class _Loading extends StatefulWidget {
  @override
  __LoadingState createState() => __LoadingState();
}

class __LoadingState extends State<_Loading> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: Colors.white.withAlpha(128),
        // at first show shade, if loading takes longer than 0,5s show spinner
        child: FutureBuilder(
            future:
            Future.delayed(const Duration(milliseconds: 500), () => true),
            builder: (context, snapshot) {
              return !snapshot.hasData
                  ? const SizedBox()
                  : Center(
                  child: Container(
                    color: Colors.yellow,
                    padding: const EdgeInsets.all(7),
                    width: 150,
                    height: 50,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.black,
                          ),
                          Text('Loading..')
                        ]),
                  ));
            }));
  }
}

class _ErrorAndRetry extends StatelessWidget {
  const _ErrorAndRetry(this.errorMessage, this.retry);

  final String errorMessage;
  final void Function() retry;

  @override
  Widget build(BuildContext context) => Center(
    child: Container(
        padding: const EdgeInsets.all(10),
        height: 70,
        color: Colors.red,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Oops! $errorMessage',
                  style: const TextStyle(color: Colors.white)),
              TextButton(
                  onPressed: retry,
                  child:
                  Row(mainAxisSize: MainAxisSize.min, children: const [
                    Icon(
                      Icons.refresh,
                      color: Colors.white,
                    ),
                    Text('Retry', style: TextStyle(color: Colors.white))
                  ]))
            ])),
  );
}


