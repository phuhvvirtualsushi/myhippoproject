<#include "../include/imports.ftl">
<#--
  Copyright 2015-2019 BloomReach B.V. (http://www.bloomreach.com)
  Usage is prohibited except for people attending a training given or authorised by BloomReach B.V., and only for that purpose.
-->
<#-- @ftlvariable name="document" type="org.example.beans.ContentDocument" -->
<#if document??>
    <@hst.link var="link" hippobean=document/>
  <div>
      <@hst.manageContent hippobean=document />
    <h2>${document.title?html}</h2>
    <p>${document.introduction?html}</p>
      <@hst.html hippohtml=document.content/>
  </div>
<#elseif editMode>
  <div class="has-edit-button">
    <img src="<@hst.link path="/images/essentials/catalog-component-icons/simple-content.png" />"> Click to edit Simple Content
      <@hst.manageContent templateQuery="new-content-document" rootPath="content"/>
  </div>
</#if>
