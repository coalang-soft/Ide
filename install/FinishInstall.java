import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Properties;

public class FinishInstall {
    
    public static void main(String[] args) throws Exception {
        File globalDir = new File(args[1]);
        
        File f = new File(args[0]);
        Properties p = new Properties();
        p.load(new FileInputStream(f));
        
        new File(globalDir + "/Ide/projectbin").mkdirs();
        p.setProperty("coa.dir", globalDir + "/projectbin/");
        p.setProperty("coa.jar", globalDir + "/use-ccl/ccl.jar");
        p.setProperty("coa.lib", globalDir + "/use-ccl/");
        p.setProperty("ide.res", globalDir + "/Ide/res/");
        
        System.out.println(p);
        p.store(new FileOutputStream(f), "Ide settings");
    }
    
}