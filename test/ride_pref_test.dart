// import 'package:flutter_test/flutter_test.dart';
// import 'package:week_3_blabla_project/dummy_data/dummy_data.dart';
// import 'package:week_3_blabla_project/model/ride/ride_pref.dart';
// import 'package:week_3_blabla_project/ui/providers/rides_preference_provider.dart';
// import 'package:week_3_blabla_project/data/repository/mock/mock_ride_preferences_repository.dart';
// import 'package:week_3_blabla_project/data/repository/ride_preferences_repository.dart';

// void main() {
//   test('RidesPreferenceProvider Test', () async {
//     // 1. Verify mock Repo implementation
//     final RidePreferencesRepository mockRepo = MockRidePreferencesRepository();

//     // 2. Initialize the Provider
//     final provider = RidesPreferenceProvider(repository: mockRepo);

//     // Initialize some dummy data
//     expect(fakeLocations.length, greaterThan(4),
//         reason: "Need at least 4 fake locations");

//     final cookie = RidePreference(
//       departure: fakeLocations[0],
//       arrival: fakeLocations[3],
//       departureDate: DateTime.now().add(const Duration(days: 1)),
//       requestedSeats: 2,
//     );

//     // 3. Test the initial state
//     expect(provider.currentPreference, isNull,
//         reason: "Should Be Null As no setting for the current ridesPref Yet");

//     // 4. Set the Current RidePref
//     provider.setCurrentPreference(cookie);
//     await Future.delayed(const Duration(microseconds: 500)); //Wait for Update

//     expect(provider.currentPreference, equals(cookie),
//         reason: "Current Preferences was not Uploaded");

//     // 5. Verify repository interaction & past preferences
//     await provider.fetchPastPreferences();
//     await Future.delayed(const Duration(microseconds: 500)); //Wait for Update

//     expect(provider.pastPreference.data, isNotNull,
//         reason: "Past Preferences should not be null");

//     expect(provider.pastPreference.data, contains(cookie),
//         reason: "Preference was not saved in past preferences");
//   });
// }
