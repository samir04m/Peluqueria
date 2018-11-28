from django import template

register = template.Library()

@register.filter
def indice(List, i):
    return List[int(i)-1]
