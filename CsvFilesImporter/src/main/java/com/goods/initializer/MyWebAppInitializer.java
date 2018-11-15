/**
 * 
 */
package com.goods.initializer;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.goods.configuration.HibernateConfig;
import com.goods.configuration.WebMvcConfig;

/**
 * @author INEXTURE
 *
 */
public class MyWebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class<?>[] { HibernateConfig.class };
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
       return new Class<?>[] { WebMvcConfig.class };
   }
    
    @Override
    protected String[] getServletMappings() {
        return new String[] {"/"};
    }
}
