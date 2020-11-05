package org.example.beans;

import org.hippoecm.hst.content.beans.standard.HippoGalleryImageBean;
import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;

@HippoEssentialsGenerated(internalName = "myproject:gogreenimageset")
@Node(jcrType = "myproject:gogreenimageset")
public class Gogreenimageset extends HippoGalleryImageSet {
    public HippoGalleryImageBean getFeatured() {
        return (HippoGalleryImageBean)this.getBean("myproject:featured", HippoGalleryImageBean.class);
    }
}
