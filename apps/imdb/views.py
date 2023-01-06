from bootstrap_datepicker_plus.widgets import DatePickerInput
from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse_lazy
from django.views.generic import CreateView, ListView, UpdateView

from apps.imdb.models import Movie


class MovieListView(ListView):
    model = Movie