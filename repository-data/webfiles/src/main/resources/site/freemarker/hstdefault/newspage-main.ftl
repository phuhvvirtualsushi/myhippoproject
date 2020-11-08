<#include "../include/imports.ftl">
<#--
  Copyright 2015-2019 BloomReach B.V. (http://www.bloomreach.com)
  Usage is prohibited except for people attending a training given or authorised by BloomReach B.V., and only for that purpose.
-->

<#-- @ftlvariable name="document" type="org.example.beans.NewsDocument" -->
<#if document??>
  <div class="blog-post">

    <div class="blog-post-type">
      <i class="icon-news"> </i>
    </div>

    <div class="blog-span">
      <div class="blog-post-featured-img">
          <#if document.image?? && document.image.featured??>
              <@hst.link var="img" hippobean=document.image.featured />
            <div class="blog-post-featured-img">
              <img src="${img}" alt="${document.title?html}" />
            </div>
          </#if>
      </div>
        <#-- TODO 1: remove the fixed title and insert it dynamically -->
      <h2>${document.title}</h2>

        <#-- TODO 2: remove the fixed introduction and insert it dynamically. -->
      <p>${document.introduction}</p>

        <#-- TODO 3: remove the fixed content and insert it dynamically. Use the hst.html tag for that. -->
      <div class="blog-post-body">
          <@hst.html hippohtml=document.content />
      </div>

      <div class="blog-post-details">
          <#-- TODO 4: show the date from the current item. Copy it from the newslist-main-newslist.ftl -->
        <div class="blog-post-details-item blog-post-details-item-left icon-calendar">
                  <span class="date">
                    <#if document.date?? && document.date.time??>
                      <p><@fmt.formatDate value=document.date.time type="Date"
                          pattern="MMMM d, yyyy h:mm a" /></p>
                    </#if>
                  </span>
        </div>

      </div>
    </div>
  </div>
</#if>

