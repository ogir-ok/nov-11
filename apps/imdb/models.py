from django.contrib.postgres.fields import ArrayField
from django.db import models
from django.utils.translation import gettext_lazy as _

# Create your models here.


class Movie(models.Model):
    class TitleType(models.TextChoices):
        short = ('short', _('Short Movie'))
        movie = ('movie', _('Movie'))

    imdb_id = models.CharField(_('Id from IMDB'), max_length=80)
    title_type = models.CharField(_('Type of the Movie'), max_length=80, choices=TitleType.choices)
    name = models.CharField(_('Name'), max_length=255)
    is_adult = models.BooleanField(_('Is Adult'), default=False)
    year = models.DateField(_('Year'), null=True)
    genres = ArrayField(models.CharField(_('Genres'), max_length=80))


class Person(models.Model):
    imdb_id = models.CharField(_('Id from IMDB'), max_length=80)
    name = models.CharField(_('Name'), max_length=255)
    birth_year = models.DateField(_('Birth Year'))
    death_year = models.DateField(_('Death Year'))


class PersonMovie(models.Model):
    person_id = models.ForeignKey('Person', on_delete=models.PROTECT)
    movie_id = models.ForeignKey('Movie', on_delete=models.PROTECT)

    order = models.IntegerField(_('Order'))
    category = models.CharField(_('Category'), max_length=80)
    job = models.CharField(_('Job'), max_length=80)
    characters = ArrayField(models.CharField(_('Characters'), max_length=255))

