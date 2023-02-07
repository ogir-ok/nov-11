from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView

from apps.lms.models import Student, Teacher, Group
from apps.lms.serializers import StudentSerializer, TeacherSerializer, GroupSerializer

from django_filters import rest_framework as filters



class StudentFilter(filters.FilterSet):
    birth_date__gte = filters.DateFilter(field_name="birth_date", lookup_expr='gte')
    birth_date__lte = filters.DateFilter(field_name="birth_date", lookup_expr='lte')

    class Meta:
        model = Student
        fields = ['name', 'birth_date']

class StudentListCreateView(ListCreateAPIView):
    serializer_class = StudentSerializer
    filterset_class = StudentFilter
    search_fields = ['name',]

    def get_queryset(self):
        queryset = Student.objects.all()

        if order_by := self.request.query_params.get('order_by'):
            queryset = queryset.order_by(order_by)

        return queryset

class StudentRetrieveUpdateDestroyView(RetrieveUpdateDestroyAPIView):
    serializer_class = StudentSerializer
    queryset = Student.objects.all()


class TeacherListCreateView(ListCreateAPIView):
    serializer_class = TeacherSerializer
    queryset = Teacher.objects.all()


class TeacherRetrieveUpdateDestroyView(RetrieveUpdateDestroyAPIView):
    serializer_class = TeacherSerializer
    queryset = Teacher.objects.all()


class GroupListCreateView(ListCreateAPIView):
    serializer_class = GroupSerializer
    queryset = Group.objects.all()


class GroupRetrieveUpdateDestroyView(RetrieveUpdateDestroyAPIView):
    serializer_class = GroupSerializer
    queryset = Group.objects.all()