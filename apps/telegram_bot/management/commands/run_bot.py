import csv

from django.core.management import BaseCommand

from apps.telegram_bot.bot import bot



class Command(BaseCommand):
    def handle(self, **options):
        bot.run()