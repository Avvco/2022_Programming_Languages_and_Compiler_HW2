package Java;

import java.io.File;

public class FileIn {
  public static String inputBaseFilePath = "./app";

  public static void checkinputFilePath() {
    if(System.getProperty("user.dir").substring(System.getProperty("user.dir").lastIndexOf("/") + 1).equals("app")){
      inputBaseFilePath = "./";
    }else if(System.getProperty("user.dir").substring(System.getProperty("user.dir").lastIndexOf("\\") + 1).equals("app")){
      inputBaseFilePath = "./";
    }
  }

  public static File getInputFile() {
    return new File(inputBaseFilePath + "/HW2data.xlsx");
  }
}
