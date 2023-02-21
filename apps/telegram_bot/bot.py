import os
import botogram

from django.conf import settings

from apps.lms.models import Student

bot = botogram.create(settings.TELEGRAM_API_KEY)


@bot.command("hello")
def hello_command(chat, message, args):
    """Say hello to the world!"""
    chat.send("Hello world")


@bot.command("list_students")
def list_students(chat, message, args):
    """List students"""
    chat.send(str(Student.objects.first()))


@bot.message_matches(r'.*')
def send_echo(chat, message: botogram.Message):
    """Echo"""
    chat.send(message.text)


if __name__ == "__main__":
    bot.run()