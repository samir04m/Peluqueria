from django import template

register = template.Library()

@register.filter
def reverse(List):
    return List.reverse()
