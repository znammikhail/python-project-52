from django.shortcuts import render
# from django.views.generic.base import TemplateView


def home_view(request):
    return render(request, 'home.html')


def about_view(request):
    return render(request, 'about.html')


def login_view(request):
    # Логика входа пользователя
    return render(request, 'app1/login.html')


def register_view(request):
    # Логика регистрации пользователя
    return render(request, 'app1/register.html')


def users_view(request):
    # Логика отображения списка пользователей
    return render(request, 'app1/users.html')
