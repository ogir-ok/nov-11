import csv

from django.core.management import BaseCommand

from apps.imdb.models import Movie, Person, PersonMovie


class Command(BaseCommand):

    def add_arguments(self, parser):
        parser.add_argument('-f', '--file', type=str)
        parser.add_argument('--delimiter', type=str, default='\t')

    def handle(self, **options):
        file_name = options.get('file')

        with open(file_name) as f:
            csv_data = csv.reader(f, delimiter=options.get('delimeter', '\t'))
            for row in csv_data:
                try:
                    row_data = {
                        'movie': Movie.objects.get(imdb_id=row[0]),
                        'person': Person.objects.get(imdb_id=row[2]),
                        'order': int(row[1]),
                        'category': row[3],
                        'job': row[4] if row[4] != '\\N' else None,
                        'characters': row[5].split(',') if row[5] != '\\N' else []
                    }
                except Movie.DoesNotExist:
                    print(f'error: no movie {row[0]}')
                    continue
                except Person.DoesNotExist:
                    print(f'error: no person {row[2]}')
                    continue

                personmovie, created = PersonMovie.objects.get_or_create(movie__imdb_id=row[0],
                                                                         person__imdb_id=row[2],
                if not created:
                    PersonMovie.objects.filter(id=personmovie.id).update(**row_data)

                print(row_data)
