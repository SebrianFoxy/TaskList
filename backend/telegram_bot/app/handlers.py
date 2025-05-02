from aiogram import F, Router
from aiogram.types import Message, CallbackQuery
from aiogram.filters import CommandStart, Command
from aiogram.fsm.state import State, StatesGroup
from aiogram.fsm.context import FSMContext
import aiohttp
import app.keyboards as kb

router = Router()


class Register(StatesGroup):
    code = State()

@router.message(CommandStart())
async def cmd_start(message: Message):
    await message.answer(
        'Добро пожаловать в бота уведомлений приложения.\nНажмите кнопку "Связать аккаунт" и введите код с приложения', 
        reply_markup=kb.main)


@router.message(F.text == 'Связать аккаунт')
async def link_account(message: Message, state: FSMContext):
    await state.set_state(Register.code)
    await message.answer('Введите код с приложения.')


@router.message(Register.code)
async def process_code(message: Message, state: FSMContext):
    code = message.text
    try:
        async with aiohttp.ClientSession() as session:
            api_url = "http://127.0.0.1:8000/api/v1/telegram_code/verify"
            payload = {
                "chat_id": message.chat.id,
                "tg_code": code
            }

            async with session.post(api_url, json=payload) as response:
                data = await response.json()

                if response.status == 201:
                    await message.answer("✅ Аккаунт успешно связан!")
                    await state.clear()
                    return

                error_message = data.get('message', 'Неизвестная ошибка')

                if response.status == 404:
                    await message.answer("❌ Код не найден.")
                elif response.status == 400:
                    if "Code expired" in error_message:
                        await message.answer("⌛ Срок действия кода истек.")
                    elif "User already linked" in error_message:
                        await message.answer("⚠️ Этот аккаунт уже привязан Telegram")
                    else:
                        await message.answer(f"❌ Ошибка: {error_message}")
                else:
                    await message.answer("⚠️ Произошла непредвиденная ошибка. Пожалуйста, попробуйте позже.")

    except aiohttp.ClientError:
        await message.answer("🔌 Ошибка соединения с сервером. Пожалуйста, проверьте ваше интернет-соединение.")
    except Exception as e:
        print(f"Unexpected error: {e}")
        await message.answer("⚠️ Внутренняя ошибка сервера. Пожалуйста, попробуйте позже.")
    finally:
        await state.clear()
