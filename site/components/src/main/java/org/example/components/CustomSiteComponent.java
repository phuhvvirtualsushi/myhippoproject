package org.example.components;

import org.example.beans.Product;
import org.hippoecm.hst.content.beans.query.HstQuery;
import org.hippoecm.hst.content.beans.query.HstQueryResult;
import org.hippoecm.hst.content.beans.query.builder.HstQueryBuilder;
import org.hippoecm.hst.content.beans.query.exceptions.QueryException;
import org.hippoecm.hst.content.beans.standard.HippoBean;
import org.hippoecm.hst.core.component.HstComponentException;
import org.hippoecm.hst.core.component.HstRequest;
import org.hippoecm.hst.core.component.HstResponse;
import org.hippoecm.hst.core.request.HstRequestContext;
import org.onehippo.cms7.essentials.components.CommonComponent;
import org.onehippo.cms7.essentials.components.EssentialsListComponent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CustomSiteComponent extends CommonComponent {
    private static Logger log = LoggerFactory.getLogger(EssentialsListComponent.class);

    public CustomSiteComponent() {
    }

    @Override
    public void doBeforeRender(HstRequest request, HstResponse response) {
        try {
            super.doBeforeRender(request, response);
            request.setModel("str", "HELLO WORLD");
            HstRequestContext requestContext = request.getRequestContext();
            HippoBean scope = requestContext.getSiteContentBaseBean();
            HstQuery hstQuery = HstQueryBuilder.create(scope)
                    .ofTypes(Product.class)
                    .build();
            log.info("HELLO WORLD");
            HstQueryResult result = hstQuery.execute();
            request.setAttribute("result", result);
        } catch (QueryException e) {
            throw new HstComponentException(
                    "Exception occured during creation or execution of HstQuery.", e);
        }
    }


}
