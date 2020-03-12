{% extends "themes/"~settings.theme~"/base.tpl" %}
{% block content %}
<section>
    <ul>
    {% for post in posts %}
        <li>
            <div class="post-date"> <span>{{ post.date|date(null, settings.timezone) }}</span></div> <!-- Sep 06, 2015 -->
            <div class="title"> <a href="{{ post.route }}">{{ post.title }}</a></div>
        </li>
    {% endfor %}
    </ul>
</section>
{% endblock %}