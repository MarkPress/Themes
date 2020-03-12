<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>{% block title %}{{ settings.sitename }}{% endblock %}</title><!-- --
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@{{ settings.twitter }}" />
    <meta name="twitter:title" content="{{ settings.sitename }}" />
    <meta name="twitter:description" content="{% if not description %}{{ settings.description }}{% else %}{{ description }}{% endif %}"><!-- -->
    <meta name="description" content="{{ settings.description }}">
    <link rel="icon" href="{{ theme }}/assets/favicon.png">
    <link rel="apple-touch-icon" href="{{ theme }}/assets/touch-icon.png">
    <link rel="stylesheet" href="//code.cdn.mozilla.net/fonts/fira.css">
    <link rel="stylesheet" href="{{ theme }}/assets/core.css">
    {% if settings.w3counter %}
    <script src="https://www.w3counter.com/tracker.js?id={{ settings.w3counter }}"></script>
    {% endif %}

    {% if settings.google_analytics %}
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      ga('create', '{{ settings.google_analytics }}', 'auto');
      ga('send', 'pageview');
    </script>
    {% endif %}
</head>

<body>
    <aside class="logo">
        <a href="{{ settings.about_link }}"> <img src="{{ settings.about_image }}" class="gravatar"> </a> <span class="logo-prompt">About the Author</span></aside>
    <main>
        {% block content %}{% endblock %}
    </main>
</body>
</html>