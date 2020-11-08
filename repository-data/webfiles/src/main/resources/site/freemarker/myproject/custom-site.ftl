<#include "../include/imports.ftl">

<#-- @ftlvariable name="item" type="org.example.beans.Product" -->
<#-- @ftlvariable name="result" type="org.hippoecm.hst.content.beans.query.HstQuery" -->
<div>
    <h2>Product list</h2>
    <ul>
        <#-- Iterate through the hippoBeans on the result -->
        <#if result?? && result.hippoBeans?has_content>
            <#list result.hippoBeans as item>
                <@hst.link var="link" hippobean=item />
                <li>
                    <@hst.cmseditlink hippobean=item/>
                    <a href="${link}">${item.title?html}</a>
                </li>
            </#list>
        </#if>
    </ul>
</div>