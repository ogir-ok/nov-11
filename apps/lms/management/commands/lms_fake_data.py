import csv
import random

from django.core.management import BaseCommand

from apps.imdb.models import Movie
from apps.lms.models import Group, Student, Teacher
from apps.lms.tests.test_lms import StudentFactory, TeacherFactory, GroupFactory


class Command(BaseCommand):

    def add_arguments(self, parser):
        parser.add_argument('-g', '--groups', type=int, default=30)
        parser.add_argument('-s', '--students', type=int, default=200,)
        parser.add_argument('-t', '--teachers', type=int, default=5)
        parser.add_argument('-spg', '--students-per-group', type=int, default=22)

    def handle(self, **options):
        students_no = options.get('students')
        for i in range(students_no):
            StudentFactory()

        teachers_no = options.get('teachers')
        for i in range(teachers_no):
            TeacherFactory()

        students = Student.objects.all()
        teachers = Teacher.objects.all()

        for _ in range(options.get('groups')):
            spg = random.randint(5, 2 * options.get('students_per_group'))
            teacher = random.choice(teachers)
            group_students =  random.choices(students, k=spg)

            GroupFactory(teacher=teacher, students=group_students)
