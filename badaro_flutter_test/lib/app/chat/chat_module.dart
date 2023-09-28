import 'package:badaro_flutter_test/app/chat/ui/page/chat_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChatModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const ChatPage());
  }
}
