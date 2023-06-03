import 'package:flutter/material.dart';
import 'package:hexa_project/ui/screens/exhibitors/widget/exhibitors.dart';
import '../../../../../components/app_bar.dart';
import '../../../../../components/personal_data.dart';
import '../../../../../components/svg_image.dart';
import '../../../../core/resources/manger_strings.dart';
import '../../../core/network/api_service.dart';
import '../../../core/resources/manger_sizes.dart';

class ExhibitorsScreen extends StatefulWidget {
  const ExhibitorsScreen({Key? key}) : super(key: key);

  @override
  State<ExhibitorsScreen> createState() => _ExhibitorsScreenState();
}

class _ExhibitorsScreenState extends State<ExhibitorsScreen> {
  List<dynamic> list = [];

  Future readData() async {
    list = await ApiService.readExhibitors();

    print('list == $list');
    if (list.isNotEmpty) {
      for (int i = 0; i < list.length; i++) {
        print('name' + list[i]);
      }
    }
  }

  @override
  void initState() {
    readData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarWidget(title: ManagerStrings.exhibitors),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: ManagerHeight.h500,
                child: GridView.builder(
                    itemCount: list.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return const Exhibitors();
                    }),
              ),
            ],
          ),
        )

        // ],
        // ),
        );
  }
}
