import 'package:data_table_example/models/studentmodel.dart';
import 'package:flutter/material.dart';

class DataTableExample extends StatefulWidget {
  const DataTableExample({super.key});

  @override
  State<DataTableExample> createState() => _DataTableExampleState();
}

class _DataTableExampleState extends State<DataTableExample> {
  List<Student> slist = [
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
    Student(
        regno: "2019-ARID-3054",
        name: "Sohaib",
        semester: "7",
        discipline: "BSCS-7B",
        cgpa: 3.4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Data Table Example",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Container(
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SingleChildScrollView(
                child: DataTable(
                    columns: const [
                      DataColumn(
                          label: Text(
                            "Reg. No",
                          )),
                      DataColumn(
                          label: Text(
                            "Name",
                          )),
                      DataColumn(
                          label: Text(
                            "Semester",
                          )),
                      DataColumn(
                          label: Text(
                            "Discipline",
                          )),
                      DataColumn(
                          label: Text(
                            "CGPA",
                          )),
                    ],
                    rows: slist.map((e) {
                      return DataRow(cells: [
                        DataCell(
                          Text(
                            e.regno,
                          ),
                        ),
                        DataCell(
                          Text(
                            e.name,
                          ),
                        ),
                        DataCell(
                          Text(
                            e.semester,
                          ),
                        ),
                        DataCell(
                          Text(
                            e.discipline,
                          ),
                        ),
                        DataCell(
                          Text(
                            e.cgpa.toString(),
                          ),
                        ),
                      ]);
                    }).toList()),
              ),
            ],
          )),
    );
  }
}
