{% extends "themes/"~settings.theme~"/layout.tpl" %}
{% block main %}
<div class="home">
    <div class="posts">
      {% for post in posts %}
        <div class="post py3">
          <p class="post-meta">{{ post.date|date('F d, Y', "Europe/Brussels") }}</p>
          <a href="{{ post.route }}" class="post-link"><h3 class="h1 post-title">{{ post.title }}</h3></a>
          <p class="post-summary">
            {{ post.content|length > 79 ? post.content|slice(0, 79) ~ '...' : post.content  }}
          </p>
        </div>
      {% endfor %}
    </div>
</div>
{% endblock %}