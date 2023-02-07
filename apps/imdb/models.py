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

    def __str__(self):
        return self.name


class Person(models.Model):
    imdb_id = models.CharField(_('Id from IMDB'), max_length=80)
    name = models.CharField(_('Name'), max_length=255)
    birth_year = models.DateField(_('Birth Year'), null=True)
    death_year = models.DateField(_('Death Year'), null=True)

    def __str__(self):
        return self.name


class PersonMovie(models.Model):
    person = models.ForeignKey('Person', on_delete=models.PROTECT)
    movie = models.ForeignKey('Movie', on_delete=models.PROTECT)

    order = models.IntegerField(_('Order'))
    category = models.CharField(_('Category'), max_length=120)
    job = models.CharField(_('Job'), max_length=120, null=True)
    characters = ArrayField(models.CharField(_('Characters'), max_length=255))

