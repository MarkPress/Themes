{% extends "themes/"~settings.theme~"/base.tpl" %}
{% block title %}{{ title }} | {{ settings.sitename }}{% endblock %}
{% block content %}
<noscript>
    <style>
        article .footnotes {
            display: block;
        }
    </style>
</noscript>
<article>
    <div class="center">
        <h1>{{ title }}</h1>
        <time>{{ post.date|date(null, settings.timezone) }}</time>
    </div>
    <div class="divider"></div>
    {{ content }}

    {% if not disable_comments %}
    <!-- include disqus -->
        {% if settings.disqus %}
        <div id="disqus_thread"></div>
        <script type="text/javascript">
        /* * * CONFIGURATION VARIABLES * * */
        var disqus_shortname = '{{ settings.disqus }}';
        
        /* * * DON'T EDIT BELOW THIS LINE * * */
        (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
        </script>
        <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
        {% endif %}
    <!-- include disqus -->
    {% endif %}
</article>
<div class="back"> <a href="{{ base }}">Back</a></div>
{% endblock %}