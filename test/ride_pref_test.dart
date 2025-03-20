import 'package:week_3_blabla_project/dummy_data/dummy_data.dart';
import 'package:week_3_blabla_project/model/ride/ride_pref.dart';
import 'package:week_3_blabla_project/providers/rides_preference_provider.dart';
import 'package:week_3_blabla_project/repository/mock/mock_ride_preferences_repository.dart';
import 'package:week_3_blabla_project/repository/ride_preferences_repository.dart';

void main() {
  RidePreferencesRepository mockRepo = MockRidePreferencesRepository();

  RidesPreferenceProvider provider =
      RidesPreferenceProvider(repository: mockRepo);

  RidePreference cookie = RidePreference(
    departure: fakeLocations[0], // London
    departureDate: DateTime.now().add(Duration(days: 1)), // Tomorrow
    arrival: fakeLocations[3], // Paris
    requestedSeats: 2,
  );

  provider.setCurrentPreference(cookie);

  print(provider.currentPreference);
}
