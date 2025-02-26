
from django.contrib import admin
from django.urls import path
from django.conf.urls.static import static
from django.conf import settings
from django.urls import path, include

urlpatterns = [
    path('', include('core.urls')),
    path('admin/', admin.site.urls),
    path('items/', include('item.urls')),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
