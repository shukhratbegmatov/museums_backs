from modeltranslation.translator import register, TranslationOptions

from museum.models import Menu
from museum.models import Museum


@register(Menu)
class MenuTranslationOptions(TranslationOptions):
    fields = ('title',)

@register(Museum)
class MuseumTranslationOptions(TranslationOptions):
        fields = ('name','description','address')