from django.db import models
class Menu(models.Model):
    title = models.CharField(verbose_name="Title",max_length=50,blank=True, null=True)
    link=models.CharField(max_length=100)

    def __str__(self):
            return self.title

class Museum(models.Model):
     name=models.CharField(max_length=100,blank=True, null=True)
     description=models.TextField(max_length=10000,blank=True, null=True)
     address=models.CharField(max_length=100,blank=True, null=True)
     number=models.CharField(max_length=100,blank=True, null=True)
     work_time=models.CharField(max_length=100,blank=True, null=True)
     status=models.CharField(max_length=100,blank=True, null=True)
     images=models.ImageField(upload_to='files/covers',unique=True, null=True,help_text='Rasmi')
     lat=models.CharField(max_length=100)
     lng=models.CharField(max_length=100)

     def __str__(self):
             return self.name

class Visit(models.Model):
     email=models.CharField(max_length=100,blank=True, null=True)
     type=models.CharField(max_length=100,blank=True, null=True)
     options=(
             ('draft','Draft'),
             ('published','Published')
     )
     full_name=models.CharField(max_length=100,blank=True, null=True)
     count=models.CharField(max_length=100,blank=True, null=True)
     date=models.CharField(max_length=100,blank=True, null=True)
     number=models.CharField(max_length=100,blank=True, null=True)
     number=models.CharField(max_length=100,blank=True, null=True)
     museum=models.ForeignKey(
        Museum, on_delete=models.PROTECT, default=1
        )

     def __str__(self):
             return self.email
# Create your models here.
