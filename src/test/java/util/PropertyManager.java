package util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PropertyManager {

    private static final String PASSWORD_FOR_ALL_USERS = "password_for_all_users";
    private static final String IS_ON_DEV = "is_on_dev";
    private static final String XTA_GERATEZERTIFIKAT_NAME_ENDING = "xta_geratezertifikat_name_ending";
    private static final String PROPERTY_FILE_PATH = "./serenity.properties";


    private static PropertyManager instance;
    private static final Object lock = new Object();
    private static Properties properties = new Properties();

    private static final Logger logger = LoggerFactory.getLogger(PropertyManager.class);

    /**
     * Create a singleton instance. We need one instance of Property Manager
     *
     * @return
     */
    public static PropertyManager getInstance() {
        if (instance == null) {
            synchronized (lock) {
                instance = new PropertyManager();
                instance.loadData();
            }
        }
        return instance;
    }

    private void loadData() {
        try (InputStream input = new FileInputStream(PROPERTY_FILE_PATH)) {
            // load a properties file
            properties.load(input);
        } catch (IOException ex) {
            logger.error("Error while reading the properties file");
        }
    }

//    private void storeData() {
//        try {
//            URL url = this.getClass().getClassLoader().getResource(PROPERTY_FILE_PATH);
//            File file = new File(url.toURI().getPath());
//
//            properties.store(new FileOutputStream(file), "");
//
//        } catch (FileNotFoundException e) {
//            logger.error("Error while searching for the properties file");
//        } catch (IOException e) {
//            logger.error("Error while writing into the properties file");
//        } catch (URISyntaxException e) {
//            logger.error("Error to uri syntax");
//        }
//    }

    public String getPasswordForAllUsers() {
        return properties.getProperty(PASSWORD_FOR_ALL_USERS);
    }

    public Boolean getIsOnDev() {
        return Boolean.valueOf(properties.getProperty(IS_ON_DEV));
    }

    public String getXtaGeratezertifikatNameEnding() {
        return properties.getProperty(XTA_GERATEZERTIFIKAT_NAME_ENDING);
    }

    public void setXtaGeratezertifikatNameEnding(String text) {
        properties.setProperty(XTA_GERATEZERTIFIKAT_NAME_ENDING, text);
        //storeData();

        //Path propertyFile = Paths.get("/src/test/resources/config/MainConfiguration.properties");

        Path propertyFile = Paths.get("src/test/resources/config/MainConfiguration.properties");

        Writer propWriter;
        try {
            propWriter = Files.newBufferedWriter(propertyFile);
            properties.store(propWriter, "");
            propWriter.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
