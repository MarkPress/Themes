<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{% block title %}Blog | {{ settings.sitename }}{% endblock %}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{% if not description %}{{ settings.description }}{% else %}{{ description }}{% endif %}">
    {% if author %}
    <meta name="author" content="{{ author }}">
    {% endif %}
    <!-- --
    <link rel="canonical" href="http://pixyll.com/"><!-- --
    <link rel="alternate" type="application/rss+xml" title="RSS Feed for Pixyll" href="{{ css }}/feed.xml" /><!-- -->

    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{ css }}/pixyll.css" type="text/css">

    <!-- Fonts -->
    <link href='//fonts.googleapis.com/css?family=Merriweather:900,900italic,300,300italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Lato:900,300' rel='stylesheet' type='text/css'>


    <!-- Verifications -->


    <!-- Open Graph -->
    <!-- From: https://github.com/mmistakes/hpstr-jekyll-theme/blob/master/_includes/head.html --
    <meta property="og:locale" content="en_US">
    <meta property="og:type" content="article">
    <meta property="og:title" content="Pixyll">
    <meta property="og:description" content="A simple, beautiful theme for Jekyll that emphasizes content rather than aesthetic fluff.">
    <meta property="og:url" content="http://pixyll.com/">
    <meta property="og:site_name" content="Pixyll">

    <!-- Twitter Card --
    <meta name="twitter:card" content="summary" />

    <meta name="twitter:title" content="Pixyll" />
    <meta name="twitter:description" content="A simple, beautiful theme for Jekyll that emphasizes content rather than aesthetic fluff." />
    <meta name="twitter:url" content="http://pixyll.com/" />�
	<!-- -->

    <!-- Icons -->
    <link rel="apple-touch-icon" sizes="57x57" href="{{ css }}/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="114x114" href="{{ css }}/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="{{ css }}/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="144x144" href="{{ css }}/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="60x60" href="{{ css }}/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="120x120" href="{{ css }}/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="76x76" href="{{ css }}/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="152x152" href="{{ css }}/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="{{ css }}/apple-touch-icon-180x180.png">
    <link rel="icon" type="image/png" href="{{ css }}/favicon-192x192.png" sizes="192x192">
    <link rel="icon" type="image/png" href="{{ css }}/favicon-160x160.png" sizes="160x160">
    <link rel="icon" type="image/png" href="{{ css }}/favicon-96x96.png" sizes="96x96">
    <link rel="icon" type="image/png" href="{{ css }}/favicon-16x16.png" sizes="16x16">
    <link rel="icon" type="image/png" href="{{ css }}/favicon-32x32.png" sizes="32x32">

    <!-- --
    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', '{{ google_analytics }}']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script><!-- -->

</head>

<body class="site">



  <div class="site-wrap">
    <header class="site-header px2 px-responsive">
  <div class="mt2 wrap">
    <div class="measure">
      <a href="{{ settings.base }}" class="site-title">{{ settings.sitename }}</a>
      <nav class="site-nav">
        {% if settings.pages %}
            {% for route,page in settings.pages %}
                <a {% if page.target %}target="{{ page.target }}"{% endif %} {% if page.nofollow %}rel="nofollow"{% endif %} href="{% if not page.url %}{{ base }}/{{ route }}{% else %}{{ page.url }}{% endif %}">{{ page.name }}</a>
            {% endfor %}
        {% endif %}
      </nav>
      <div class="clearfix"></div>

    </div>
  </div>
</header>


    <div class="post p2 p-responsive wrap" role="main">
      <div class="measure">
        {% block main %}{% endblock %}
      </div>
    </div>
  </div>

  <footer class="center">
  <div class="measure">
    <small>
      Theme crafted with &lt;3 by <a href="http://johnotander.com">John Otander</a> (<a href="https://twitter.com/4lpine">@4lpine</a>).<br>
      &lt;/&gt; available on <a href="https://github.com/MarkPress/Themes">Github</a>.
    </small>
  </div>
</footer>

</body>
</html>
