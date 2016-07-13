package org.literacyapp.asr.web.servlet;

import org.literacyapp.asr.util.db.migration.DbMigrationHelper;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class CustomDispatcherServlet extends DispatcherServlet {

    @Override
    protected WebApplicationContext initWebApplicationContext() {
    	logger.info("initWebApplicationContext");
    	
        WebApplicationContext wac = super.initWebApplicationContext();
        
        // Database migration
        logger.info("Performing database migration...");
        new DbMigrationHelper().performDatabaseMigration(wac);

        return wac;
    }
}
