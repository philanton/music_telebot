# -*- coding utf-8 -*-

import config
import telebot
from telebot import types
from SQLither import SQLither
import utils
import random

bot = telebot.TeleBot(config.token)

@bot.message_handler(commands=['game'])
def game(message):
  db_worker = SQLither(config.database_name)
  row = db_worker.select_single(random.randint(1, utils.get_rows_count()))
  markup = utils.generate_markup(row[2], row[3])
  bot.send_voice(message.chat.id, row[1], reply_markup=markup)
  utils.set_user_game(message.chat.id, row[2])
  db_worker.close()

@bot.message_handler(func=lambda message: True, content_types=['text'])
def check_answer(message):
  answer = utils.get_answer_for_user(message.chat.id)
  if not answer:
    bot.send_message(message.chat.id, 'Чтобы начать игру выберите команду /game')
  else:
    keyboard_hider = types.ReplyKeyboardRemove()
    if message.text == answer:
      bot.send_message(message.chat.id, 'Конгратюлейшонс!!!', reply_markup=keyboard_hider)
    else:
      bot.send_message(message.chat.id, 'Плак-плак-плак...', reply_markup=keyboard_hider)
    utils.finish_user_game(message.chat.id)

if __name__ == '__main__':
  utils.count_rows()
  random.seed()
  bot.infinity_polling()
