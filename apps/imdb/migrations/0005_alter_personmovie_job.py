# Generated by Django 4.0.6 on 2023-01-31 17:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('imdb', '0004_rename_movie_id_personmovie_movie_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='personmovie',
            name='job',
            field=models.CharField(max_length=80, null=True, verbose_name='Job'),
        ),
    ]