import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/views/Bottom_sheets/delete_task_bottom_sheet_view.dart';
import 'package:todo_list/views/Bottom_sheets/settings_task_bottom_sheet_view.dart';
import 'package:todo_list/views_module/app_view_model.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppviewModel>(
      builder: (context, viewModel, child) {
        return Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              "Welcome Back",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w400,
                                  color: viewModel.clrLv4),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              viewModel.username,
                              style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.bold,
                                  color: viewModel.clrLv4),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            //delete icon
            Expanded(
                flex: 1,
                child: InkWell(
                    onTap: () {
                      viewModel.bottomSheetBuilder(
                          DeleteBottomsheetView(), context);
                    },
                    child:
                        Icon(Icons.delete, color: viewModel.clrLv3, size: 40))),
            //settings icon
            Expanded(
                flex: 1,
                child: InkWell(
                    onTap: () {
                      viewModel.bottomSheetBuilder(
                          SettingsTaskBottomSheetView(), context);
                    },
                    child: Icon(Icons.settings,
                        color: viewModel.clrLv3, size: 40))),
          ],
        );
      },
    );
  }
}
