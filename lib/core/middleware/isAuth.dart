import 'package:flutter_chat_ui_starter/constants/mock_data.dart';
import 'package:flutter_chat_ui_starter/models/user_model.dart';

bool isCurrentUser(User user) {
  User currentUser = MockData().currentUser;
  return user.id == currentUser.id;
}
