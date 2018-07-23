{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}


{% block title %}{{ page.title }} | {{ config.title }}{% endblock %}

{% block page_class %}page-post-detail{% endblock %}


{% block content %}

  <div id="posts" class="posts-expand">
    {{ post_template.render(page) }}

    <div class="post-spread">
      {% if theme.jiathis %}
        <#include "_partials/share/jiathis.ftl">
      {% elseif theme.baidushare %}
        <#include "_partials/share/baidushare.ftl">
      {% elseif theme.add_this_id %}
        <#include "_partials/share/add-this.ftl">
      {% elseif theme.duoshuo_shortname and theme.duoshuo_share %}
        <#include "_partials/share/duoshuo_share.ftl">
      {% endif %}
    </div>
  </div>

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(true) }}
{% endblock %}

{% block script_extra %}
<#include "_scripts/pages/post-details.ftl">
{% endblock %}
