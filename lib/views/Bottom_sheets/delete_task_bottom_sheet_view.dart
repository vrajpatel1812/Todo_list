import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/views_module/app_view_model.dart';

class DeleteBottomsheetView extends StatelessWidget {
  const DeleteBottomsheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppviewModel>(
      builder: (context, viewModel, child) {
        return Container(
          height: 125,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    viewModel.deleteAllTask();
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: viewModel.clrLv1,
                      backgroundColor: viewModel.clrLv3,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text("Delete All")),
              SizedBox(width: 15),
              ElevatedButton(
                  onPressed: () {
                    viewModel.deleteCompletedTask();
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: viewModel.clrLv1,
                      backgroundColor: viewModel.clrLv3,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text("Delete Completed"))
            ],
          ),
        );
      },
    );
  }
}
