import 'package:flutter/material.dart';
import 'Ecological/ecological_engineering_course_levels_screen.dart';
import 'Climate/climate_services_course_levels_screen.dart';
import 'Industrial Design/industrial_design_course_levels_screen.dart';
import 'Industrial Waste/industrial_waste_management_course_levels_screen.dart';

class ProgramsScreen extends StatelessWidget {
  const ProgramsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final programs = [
      "Ecological Engineering",
      "Climate Services",
      "Industrial Design Engineering",
      "Industrial Waste Management"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Programs"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: programs.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(programs[index]),
              onTap: () {
                if (programs[index] == "Ecological Engineering") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          EcologicalEngineeringCourseLevelsScreen(
                        programName: programs[index],
                      ),
                    ),
                  );
                } else if (programs[index] == "Climate Services") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClimateServicesCourseLevelsScreen(
                        programName: programs[index],
                      ),
                    ),
                  );
                } else if (programs[index] == "Industrial Design Engineering") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IndustrialDesignCourseLevelsScreen(
                        programName: programs[index],
                      ),
                    ),
                  );
                } else if (programs[index] == "Industrial Waste Management") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          IndustrialWasteManagementCourseLevelsScreen(
                        programName: programs[index],
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          "Navigation for ${programs[index]} is not available yet."),
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
