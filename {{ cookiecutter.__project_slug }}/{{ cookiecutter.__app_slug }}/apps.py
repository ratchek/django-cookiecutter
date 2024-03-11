from django.apps import AppConfig


class {{ cookiecutter.__app_class_name }}Config(AppConfig):
    default_auto_field = "django.db.models.BigAutoField"
    name = "{{ cookiecutter.__app_slug }}"
