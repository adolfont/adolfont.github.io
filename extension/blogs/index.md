<!-- # v1
<ul>
{% for post in site.posts %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>

# v2 
<ul>
{% for post in site.posts %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    {{ post.excerpt }}
  </li>
{% endfor %}
</ul>

# v3 -->

# Adolfo Neto's blog
<ul>
{% for post in site.posts %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a> - {{ post.date | date: "%B %d, %Y" }} 

  </li>
{% endfor %}
</ul>
