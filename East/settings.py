# coding=utf8

"""
Django settings for East project.

For more information on this file, see
https://docs.djangoproject.com/en/1.7/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.7/ref/settings/
"""

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os

BASE_DIR = os.path.dirname(os.path.dirname(__file__))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.7/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '-q8=i8li$7#4w4cg(pfqi#login^a1f#!&pegx*v%+w0*pd40z)tim'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = (
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'login',
    'resource_query'
)

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

ROOT_URLCONF = 'East.urls'

WSGI_APPLICATION = 'East.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.7/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}

# Internationalization
# https://docs.djangoproject.com/en/1.7/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'GMT'

USE_I18N = True

USE_L10N = True

USE_TZ = True

DEFAULT_CHARSET = 'utf-8'

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.7/howto/login-files/

STATIC_URL = '/East/'

STATICFILES_FINDERS = [
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
]

STATICFILES_DIRS = [os.path.join(BASE_DIR, 'Static Files')]

TEMPLATE_DIRS = (os.path.join(BASE_DIR, 'templates'),
                 os.path.join(BASE_DIR, 'login/templates'),  # path to login templates
                 )

CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.db.DatabaseCache',
        'LOCATION': 'testing_cache_table'
    }
}

# my settings
PAGE_AFTER_LOGIN = 'test.html'

cutter_param = {
    'cutter_name': u'刀具名称',
    'cutter_model': u'刀具型号',
    'cutter_length': u'刀具长度',
    'cutter_blade_diameter': u'刃径',
    'cutter_diameter': u'刀具直径',
    'cutter_tip_diameter': u'刀尖圆弧半径',
    'enter_angle': u'主偏角',
    'blade_width': u'刃宽',
    'screw_pitch': u'螺距',
    'hilt_length': u'刀柄长度',
    'cutter_material': u'刀具材料',
    'max_groove_depth': u'最大切槽深度',
    'screw_type': u'螺纹种类',
    'blade_shape': u'刀片形状',
    'blade_sum': u'刃数',
    'cutting_edge_length': u'切削刃长度',
    'processing_heat_resisting_alloy': u'可加工耐热合金',
    'processing_cast_iron': u'可加工铸铁',
    'processing_titanium_alloy': u'可加工钛合金',
    'processing_carbon_steel': u'可加工碳钢',
    'processing_mild_steel': u'可加工软钢',
    'processing_steel': u'可加工钢',
    'processing_nonferrous_metal': u'可加工有色金属',
    'processing_stainless_steel': u'可加工不锈钢',
    'processing_gray_cast_iron': u'可加工灰铸铁',
    'processing_alloy_steel': u'可加工合金钢'
}

machine_tool_param = {
    'machine_tool_name': u'机床名称',
    'main_axle_rotation_speed': u'主轴转速',
    'surface_roughness': u'表面粗糙度',
    'processing_range': u'加工范围',
    'main_electric_machinery_power': u'主电机功率',
    'processing_precision': u'加工精度',
}