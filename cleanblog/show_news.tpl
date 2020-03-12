{% extends "themes/"~settings.theme~"/base.tpl" %}

{% block header %}
<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
{% if attribute(settings.routes, uri).postimage %}
    <header class="intro-header" style="background-image: url('{{theme}}/{{ attribute(settings.routes, uri).postimage }}')">
{% else %}
    <header class="intro-header" style="background-image: url('{{theme}}/{{ settings.routes.default.postimage }}')">
{% endif %}
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading">
                    <h1>
                    {% if attribute(settings.routes, uri).title %}
                        {{ attribute(settings.routes, uri).title }}
                    {% else %}
                        {{ settings.routes.default.title }}
                    {% endif %}
                    </h1>
                    {% if attribute(settings.routes, uri).subtitle %}
                        <hr class="small">
                        <span class="subheading">
                            {{ attribute(settings.routes, uri).subtitle }}
                        </span>
                    {% endif %}
                </div>
            </div>
        </div>
    </div>
</header>
{% endblock %}

{% block content %}
    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            {% for post in posts %}
            <div class="post-preview">
                <a href="{{ post.route }}"><h2 class="post-title">{{ post.title }}</h2>
                <h3 class="post-subtitle">
                    {% if post.subtitle != false %}
                        {{ post.subtitle }}
                    {% else %}
                        {{ post.content|length > 79 ? post.content|slice(0, 79) ~ '...' : post.content  }}
                    {% endif %}
                </h3></a>

                <p class="post-meta">
                {% if post.author != false or post.date != false %}
                    Posted
                    {% if post.author != false %}
                        {% if post.authorURL != false %}
                            by <a target="_blank" href="{{ post.authorURL }}">{{ post.author }}</a>
                        {% else %}
                            by {{ post.author }}
                        {% endif %}
                    {% endif %}
                    {% if post.date != false %}
                        on {{ post.date|date('F d, Y', "Europe/Brussels") }}
                    {% endif %}
                {% endif %}
                </p>
            </div>
            <hr>
            {% endfor %}
            </div>
        </div>
    </div>
{% endblock %}
