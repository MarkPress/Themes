{% extends "themes/"~settings.theme~"/base.tpl" %}

{% block title %}
    {{ title }} | {{ settings.sitename }}
{% endblock %}

{% block header %}
{% if postimage != false %}
    {% if file_exists('themes/cleanblog/'~postimage) %}
        <header class="intro-header" style="background-image: url('{{ theme }}/{{ postimage }}')">
    {% else %}
        <header class="intro-header" style="background-image: url('{{ postimage }}')">
    {% endif %}
{% else %}
    <header class="intro-header" style="background-image: url('{{ theme }}/img/header08.jpg')">
{% endif %}
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-heading">
                    <h1>{{ title }}</h1>
                    {% if subtitle is defined %}
                        {% if subtitle is not empty %}
                        <h2 class="subheading">{{ subtitle }}</h2>
                        {% endif %}
                    {% else %}
                        <h2 class="subheading">{{ content|length > 79 ? content|slice(0, 79) ~ '...' : content  }}</h2>
                    {% endif %}
                    <span class="meta">
                    {% if author != false or date != false %}
                        Posted
                        {% if author != false %}
                            {% if authorURL != false %}
                                by <a target="_blank" href="{{ authorURL }}">{{ author }}</a>
                            {% else %}
                                by {{ author }}
                            {% endif %}
                        {% endif %}
                        {% if date != false %}
                            on {{ date|date('F d, Y', "Europe/Brussels") }}
                        {% endif %}
                    {% endif %}
                    </span>
                </div>
            </div>
        </div>
    </div>
</header>
{% endblock %}

{% block content %}
    <!-- Post Content -->
    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    {{ content }}

                    {% if not disable_comments %}
                        <!-- include disqus -->
                        {% include "themes/"~settings.theme~"/disqus.tpl" %}
                        <!-- include disqus -->
                    {% endif %}
                </div>
            </div>
        </div>
    </article>
{% endblock %}
