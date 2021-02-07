import 'package:flutter_chat_ui_starter/models/message_model.dart';
import 'package:flutter_chat_ui_starter/models/user_model.dart';

class MockData {
// YOU - current user
  final User currentUser =
      User(id: 0, name: 'Current User', imageUrl: 'assets/images/greg.jpg');

// USERS
  final User greg =
      User(id: 1, name: 'Greg', imageUrl: 'assets/images/greg.jpg');
  final User james =
      User(id: 2, name: 'James', imageUrl: 'assets/images/james.jpg');
  final User john =
      User(id: 3, name: 'John', imageUrl: 'assets/images/john.jpg');
  final User olivia =
      User(id: 4, name: 'Olivia', imageUrl: 'assets/images/olivia.jpg');
  final User sam = User(id: 5, name: 'Sam', imageUrl: 'assets/images/sam.jpg');
  final User sophia =
      User(id: 6, name: 'Sophia', imageUrl: 'assets/images/sophia.jpg');
  final User steven =
      User(id: 7, name: 'Steven', imageUrl: 'assets/images/steven.jpg');

  List<User> favorites;
  List<Message> chats;
  List<Message> messages;

  MockData() {
    this.favorites = [this.sam, this.steven, this.olivia, this.john, this.greg];
    this.chats = [
      Message(
        sender: james,
        time: '5:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: true,
      ),
      Message(
        sender: olivia,
        time: '4:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: true,
      ),
      Message(
        sender: john,
        time: '3:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: false,
      ),
      Message(
        sender: sophia,
        time: '2:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: true,
      ),
      Message(
        sender: steven,
        time: '1:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: false,
      ),
      Message(
        sender: sam,
        time: '12:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: false,
      ),
      Message(
        sender: greg,
        time: '11:30 AM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: false,
        unread: false,
      ),
    ];
    this.messages = [
      Message(
        sender: james,
        time: '5:30 PM',
        text: 'Hey, how\'s it going? What did you do today?',
        isLiked: true,
        unread: true,
      ),
      Message(
        sender: currentUser,
        time: '4:30 PM',
        text:
            'Just walked my doge. She was super duper cute. The best pupper!!',
        isLiked: false,
        unread: true,
      ),
      Message(
        sender: james,
        time: '3:45 PM',
        text: 'How\'s the doggo?',
        isLiked: false,
        unread: true,
      ),
      Message(
        sender: james,
        time: '3:15 PM',
        text: 'All the food',
        isLiked: true,
        unread: true,
      ),
      Message(
        sender: currentUser,
        time: '2:30 PM',
        text: 'Nice! What kind of food did you eat?',
        isLiked: false,
        unread: true,
      ),
      Message(
        sender: james,
        time: '2:00 PM',
        text: 'I ate so much food today.',
        isLiked: false,
        unread: true,
      ),
    ];
  }

  void sendMessage(String message) {
      this.messages.add(Message(
          isLiked: false,
          sender: currentUser,
          text: message,
          time: DateTime.now().toString(),
          unread: true));
    }
}
