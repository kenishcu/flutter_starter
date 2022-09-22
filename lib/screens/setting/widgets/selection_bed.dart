import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:itrapp/controllers/setting_controller.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'package:itrapp/models/settings/bed_model.dart';
import 'package:get/get.dart';

class SelectionBed extends GetView<SettingController> {

  const SelectionBed({Key? key}) : super(key: key);

  Widget _customDropDownExample(
      BuildContext context, BedModel? selectedItem) {

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text(selectedItem?.bedName ?? ''),
        ),
      ),
    );
  }

  Widget _customPopupItemBuilderExample(
      BuildContext context, BedModel? item, bool isSelected) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: !isSelected
          ? null
          : BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: ListTile(
        selected: isSelected,
        title: Text(item?.bedName ?? ''),
      ),
    );
  }

  Widget _inputRoomSelection(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
         SizedBox(
           height: 50,
           width: 200,
           child: Align(
             alignment: Alignment.center,
             child: Text(AppLocalizations.of(context).getTranslate('bed'),
               textAlign: TextAlign.center,
               style: const TextStyle(
                   fontWeight: FontWeight.w600,
                   fontSize: 20
               ),
             ),
           ),
         ),
         Obx(() =>  SizedBox(
           height: 50,
           width: size.width - 500,
           child:  DropdownSearch<BedModel>(
             mode: Mode.DIALOG,
             items: controller.beds,
             selectedItem: controller.selectedBed.value,
             dropdownSearchDecoration: InputDecoration(
               contentPadding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
               filled: true,
               fillColor: Theme.of(context).backgroundColor,
               border: const OutlineInputBorder(),
             ),
             onChanged: (BedModel? bed) {
               controller.setBeds(bed!);
             },
             showSearchBox: true,
             searchFieldProps: TextFieldProps(
               decoration: InputDecoration(
                 border:  const OutlineInputBorder(),
                 contentPadding: const EdgeInsets.fromLTRB(12, 12, 8, 0),
                 labelText: AppLocalizations.of(context).getTranslate('find_a_bed'),
               ),
             ),
             popupTitle: Container(
               height: 50,
               decoration: BoxDecoration(
                 color: Theme.of(context).primaryColorDark,
                 borderRadius: const BorderRadius.only(
                   topLeft: Radius.circular(20),
                   topRight: Radius.circular(20),
                 ),
               ),
               child: Center(
                 child: Text(
                   AppLocalizations.of(context).getTranslate('bed'),
                   style: const TextStyle(
                     fontSize: 24,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
               ),
             ),
             popupShape: const RoundedRectangleBorder(
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(24),
                 topRight: Radius.circular(24),
               ),
             ),
             dropdownBuilder: _customDropDownExample,
             popupItemBuilder: _customPopupItemBuilderExample,
           ),
         ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _inputRoomSelection(context);
  }


}