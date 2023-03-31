import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:godseye/models/user.dart';

final userProvider = StateNotifierProvider<UserNotifier, User>((ref) {
  return UserNotifier(User.wretch());
});

class UserNotifier extends StateNotifier<User> {
  UserNotifier(User state) : super(state);

  void updateUserName(String newName) {
    state = state.copyWith(name: newName);
  }

  // Add more methods to update other user properties
}
