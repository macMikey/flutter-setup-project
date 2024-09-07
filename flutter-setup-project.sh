#!/bin/bash

# Check if a project name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <project_name>"
  exit 1
fi

PROJECT_NAME=$1

# Create a new Flutter project
flutter create $PROJECT_NAME

# Navigate to the project directory
cd $PROJECT_NAME

# Create the additional directory structure
mkdir -p lib/src/constants
mkdir -p lib/src/models
mkdir -p lib/src/screens
mkdir -p lib/src/services
mkdir -p lib/src/utils
mkdir -p lib/src/widgets

# Create constants.dart
cat <<EOL > lib/src/constants/constants.dart
import 'package:flutter/material.dart';

EOL

# Create home_screen.dart
cat <<EOL > lib/src/screens/home_screen.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome to My Flutter App!'),
      ),
    );
  }
}
EOL

# Create custom_widget.dart
cat <<EOL > lib/src/widgets/custom_widget.dart
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final String text;

  CustomWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
EOL

# Create data_model.dart
cat <<EOL > lib/src/models/data_model.dart
class DataModel {
  final String id;
  final String name;

  DataModel({required this.id, required this.name});
}
EOL

# Create api_service.dart
cat <<EOL > lib/src/services/api_service.dart
class ApiService {
  Future<String> fetchData() async {
    // Simulate network request
    await Future.delayed(Duration(seconds: 2));
    return 'Fetched Data';
  }
}
EOL

# Update main.dart to use HomeScreen
cat <<EOL > lib/main.dart
import 'package:flutter/material.dart';
import 'src/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
EOL

# Open the project in Visual Studio Code
code .

echo "Flutter project $PROJECT_NAME has been set up successfully."