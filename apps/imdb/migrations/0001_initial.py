# Generated by Django 4.0.6 on 2023-01-06 17:55

import django.contrib.postgres.fields
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Movie',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('imdb_id', models.CharField(max_length=80, verbose_name='Id from IMDB')),
                ('title_type', models.CharField(choices=[('Short Movie', 'Short'), ('Movie', 'Movie')], max_length=80, verbose_name='Type of the Movie')),
                ('name', models.CharField(max_length=255, verbose_name='Name')),
                ('is_adult', models.BooleanField(default=False, verbose_name='Is Adult')),
                ('year', models.DateField(verbose_name='Year')),
                ('genres', django.contrib.postgres.fields.ArrayField(base_field=models.CharField(max_length=80, verbose_name='Genres'), size=None)),
            ],
        ),
        migrations.CreateModel(
            name='Person',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('imdb_id', models.CharField(max_length=80, verbose_name='Id from IMDB')),
                ('name', models.CharField(max_length=255, verbose_name='Name')),
                ('birth_year', models.DateField(verbose_name='Birth Year')),
                ('death_year', models.DateField(verbose_name='Death Year')),
            ],
        ),
        migrations.CreateModel(
            name='PersonMovie',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('order', models.IntegerField(verbose_name='Order')),
                ('category', models.CharField(max_length=80, verbose_name='Category')),
                ('job', models.CharField(max_length=80, verbose_name='Job')),
                ('characters', django.contrib.postgres.fields.ArrayField(base_field=models.CharField(max_length=255, verbose_name='Characters'), size=None)),
                ('movie_id', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='imdb.movie')),
                ('person_id', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='imdb.person')),
            ],
        ),
    ]
