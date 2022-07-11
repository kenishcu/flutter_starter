import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:itrapp/controllers/setting_controller.dart';
import 'package:itrapp/models/settings/room_model.dart';
import 'package:get/get.dart';

class SelectionRoom extends GetView<SettingController> {

  const SelectionRoom({Key? key}) : super(key: key);

  Widget _customDropDownExample(
      BuildContext context, RoomModel? selectedItem) {

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        title: Text(selectedItem?.roomName ?? ''),
      ),
    );
  }

  Widget _customPopupItemBuilderExample(
      BuildContext context, RoomModel? item, bool isSelected) {
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
        title: Text(item?.roomName ?? ''),
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
          const SizedBox(
            height: 50,
            width: 200,
            child: Align(
              alignment: Alignment.center,
              child: Text("Phòng",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                ),
              ),
            ),
          ),
          Obx(() =>  SizedBox(
            height: 50,
            width: size.width - 500,
            child:  DropdownSearch<RoomModel>(
              mode: Mode.DIALOG,
              items: controller.rooms,
              dropdownSearchDecoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                filled: true,
                fillColor: Theme.of(context).backgroundColor,
                border: const OutlineInputBorder(),
              ),
              selectedItem: controller.selectedRoom.value,
              onChanged: (RoomModel? room) {
                controller.setRooms(room!);
              },
              showSearchBox: true,
              searchFieldProps: TextFieldProps(
                decoration: const InputDecoration(
                  border:  OutlineInputBorder(),
                  contentPadding: EdgeInsets.fromLTRB(12, 12, 8, 0),
                  labelText: "Tìm kiếm phòng ban",
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
                child: const Center(
                  child: Text(
                    'Phòng ban',
                    style: TextStyle(
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
          )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _inputRoomSelection(context);
  }

}