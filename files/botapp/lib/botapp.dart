import 'package:botapp/constants/texts.dart';
import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

class Bot {
  final channelsInlineButton = InlineKeyboardMarkup(inlineKeyboard: [
    [InlineKeyboardButton(text: "text",url: "https://t.me/kinoyac")]
  ]);
  void bot() async {
    var token = '7926598799:AAHu3QHAP4nrDgFfTUiQdLRUNTh1dtGZPmU';
    final username = (await Telegram(token).getMe()).username;
    var teledart = TeleDart(token, Event(username!));

    teledart.start();

    teledart.onCommand().listen((mes) {
      if (mes.text == "/start") {
        // mes.reply(
        //   replyMarkup: channelsInlineButton,
        //   "👋 Salom ${mes.from != null ? mes.from!.firstName : ""} Kinoya App botiga xush kelibsiz!\n🤖 Botdan foydalanish uchun quyidagi kanallarga a'zo bo'ling:",
        // );
         mes.reply(
          replyMarkup: channelsInlineButton,
          "👋 Salom ${mes.from != null ? mes.from!.firstName : ""} Bot tez orada ishga tushadi yangiliklardan xabardor bo'lish uchun ushbu kanalga obuna bo'ling:",
        );
      }
    });
  }
}
