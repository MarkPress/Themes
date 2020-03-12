<ul class="list-inline text-center">
    {% if settings.twitter %}
    <li>
        <a href="https://twitter.com/{{ settings.twitter }}">
            <span class="fa-stack fa-lg">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
            </span>
        </a>
    </li>
    {% endif %}
    {% if settings.github %}
    <li>
        <a href="https://github.com/{{ settings.github }}">
            <span class="fa-stack fa-lg">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-github fa-stack-1x fa-inverse"></i>
            </span>
        </a>
    </li>
    {% endif %}
</ul>
<p class="copyright text-muted">&copy; {{ "now"|date("Y") }} by {{ settings.sitename }}. All rights reserved.</p>
