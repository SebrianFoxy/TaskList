from aiogram.types import (ReplyKeyboardMarkup, KeyboardButton,
                        InlineKeyboardMarkup, InlineKeyboardButton)


main = ReplyKeyboardMarkup(keyboard=[[KeyboardButton(text='Связать аккаунт')]],
                            resize_keyboard= True,
                            input_field_placeholder = 'Выберите пункт меню...')
