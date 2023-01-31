from django.urls import path

from apps.lms.api_views import StudentListCreateView, StudentRetrieveUpdateDestroyView, \
    TeacherRetrieveUpdateDestroyView, TeacherListCreateView, GroupListCreateView, GroupRetrieveUpdateDestroyView

app_name = 'lms'

urlpatterns = [
    path('students/', StudentListCreateView.as_view()),
    path('students/<str:pk>/', StudentRetrieveUpdateDestroyView.as_view()),
    path('teachers/', TeacherListCreateView.as_view()),
    path('teachers/<str:pk>/', TeacherRetrieveUpdateDestroyView.as_view()),
    path('groups/', GroupListCreateView.as_view()),
    path('groups/<str:pk>/', GroupRetrieveUpdateDestroyView.as_view())
]
