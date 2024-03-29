# Generated by Django 4.0.6 on 2023-01-17 18:43

from django.db import migrations



def add_periodical_task(apps, shema_editor):
    CrontabSchedule = apps.get_model('django_celery_beat', 'CrontabSchedule')
    PeriodicTask = apps.get_model('django_celery_beat', 'PeriodicTask')

    schedule = CrontabSchedule(minute=0,hour=19)
    schedule.save()
    schedule2 = CrontabSchedule(minute=0,hour=20)
    schedule2.save()

    PeriodicTask(name='Send Emails', task='apps.authentication.tasks.remind_confirm_email', crontab=schedule).save()
    PeriodicTask(name='Send Emails2', task='apps.authentication.tasks.remind_confirm_email', crontab=schedule2).save()



def remove_task(apps, schema_editor):
    pass

class Migration(migrations.Migration):

    dependencies = [
        ('authentication', '0006_alter_usertoken_user'),
        ('django_celery_beat', '0014_remove_clockedschedule_enabled'),
    ]

    operations = [
        migrations.RunPython(add_periodical_task, remove_task)
    ]
