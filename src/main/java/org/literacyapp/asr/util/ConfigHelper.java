package org.literacyapp.asr.util;

import java.util.Properties;
import org.literacyapp.asr.web.context.EnvironmentContextLoaderListener;

public class ConfigHelper {

    public static String getProperty(String key) {
        String value = null;

        Properties properties = EnvironmentContextLoaderListener.PROPERTIES;
        value = properties.getProperty(key);

        return value;
    }

    public static boolean getBooleanProperty(String key) {
        return Boolean.valueOf(getProperty(key));
    }
}
