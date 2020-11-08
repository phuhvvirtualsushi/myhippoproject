<#include "../include/imports.ftl">
<#--
  Copyright 2015-2019 BloomReach B.V. (http://www.bloomreach.com)
  Usage is prohibited except for people attending a training given or authorised by BloomReach B.V., and only for that purpose.
-->

<#-- @ftlvariable name="item" type="org.example.beans.NewsDocument" -->
<#-- @ftlvariable name="pageable" type="org.onehippo.cms7.essentials.components.paging.Pageable" -->
<div class="news-overview">
    <#if pageable?? && pageable.items?has_content>
        <#list pageable.items as item>
            <@hst.link var="link" hippobean=item />
          <div class="blog-post has-edit-button">
              <@hst.manageContent hippobean=item/>
            <div class="blog-post-type">
              <i class="icon-news"> </i>
            </div>
            <div class="blog-span">
                <#if item.image?? && item.image.featured??>
                    <@hst.link var="img" hippobean=item.image.featured />
                  <div class="blog-post-featured-img">
                    <a href="${link}"><img
                              src="${img}"
                              alt="${item.title?html}"/></a>
                  </div>
                </#if>
              <h2>
                <a href="${link}">${item.title?html}</a>
              </h2>
              <div class="blog-post-body">
                <p>${item.introduction?html}</p>
              </div>
              <div class="blog-post-details">
                <div class="blog-post-details-item blog-post-details-item-left icon-calendar">
                    <#if item.date?? && item.date.time??>
                      <p><@fmt.formatDate value=item.date.time type="both" dateStyle="medium" timeStyle="short"/></p>
                    </#if>
                </div>
                <div class="blog-post-details-item blog-post-details-item-right">
                  <a href="${link}"> Read more<i class="fa fa-chevron-right"></i></a>
                </div>
              </div>
            </div>
          </div>
        </#list>
        <#if cparam.showPagination>
            <#include "../include/pagination.ftl">
        </#if>
    <#elseif editMode>
      <div>
        <img src="<@hst.link path='/images/essentials/catalog-component-icons/news-list.png'/>"> Click to edit News List
        <div class="has-new-content-button">
            <@hst.manageContent templateQuery="new-news-document" rootPath="news" defaultPath="${currentYear}/${currentMonth}"/>
        </div>
      </div>
    </#if>
</div>