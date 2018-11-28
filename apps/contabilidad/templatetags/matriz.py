from django import template

register = template.Library()

@register.filter
def matriz(List, i):
    return List[int(i)]
