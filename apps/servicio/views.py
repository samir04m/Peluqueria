from django.shortcuts import render
from django.http import HttpResponseRedirect, HttpResponse

# Create your views here.
def home(request):
    return render(request, 'main/home.html')
