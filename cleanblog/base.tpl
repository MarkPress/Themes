<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{% if not description %}{{ settings.description }}{% else %}{{ description }}{% endif %}">
    {% if author %}
    <meta name="author" content="{{ author }}">
    {% endif %}
    <title>{% block title %}{{ settings.sitename }}{% endblock %}</title>

    <!-- Bootstrap Core CSS -->
    <link href="{{css}}/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="{{css}}/clean-blog.css" rel="stylesheet">

    <!-- HighLight.js CSS -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.2.0/styles/{{settings.hljs}}.min.css"><!-- -->
    <style>
    pre {
        margin: 0;
        padding: 0;
        border: 0;
        outline: 0;
    }
    </style>
    <!-- Custom Fonts -->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
{% include "themes/"~settings.theme~"/navigation.tpl" %}
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
<!-- Set your background image for this header on the line below. --
<header class="intro-header" style="background-image: url('{{ theme }}/img/home-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading">
                    <h1>Modularr</h1>
                    <hr class="small">
                    <span class="subheading">Awesome tools to build better websites</span>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- -->
{% endblock %}
    {% block content %}{% endblock %}
    <hr>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    {% include "themes/"~settings.theme~"/foot.tpl" %}
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="{{ js }}/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="{{ js }}/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="{{ js }}/clean-blog.js"></script>
    {% include "themes/"~settings.theme~"/assets.tpl" %}

    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script><!-- -->

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
</body>
</html>
