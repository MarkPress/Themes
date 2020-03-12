{% extends "themes/"~settings.theme~"/layout.tpl" %}
{% block title %}{{ title }} | {{ settings.sitename }}{% endblock %}
{% block main %}
<div class="post-header mb2">
  <h1>{{ post.title }}</h1>
  <span class="post-meta">{{ post.date|date('F d, Y', "Europe/Brussels") }}</span><br>
</div>

<article class="post-content">
    {{ content }}
    
    {% if not disable_comments %}
        <!-- include disqus -->
        {% include "themes/"~settings.theme~"/disqus.tpl" %}
        <!-- include disqus -->
    {% endif %}
</article>
{% endblock %}