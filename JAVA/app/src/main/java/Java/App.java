/*
 * This Java source file was generated by the Gradle "init" task.
 */
package Java;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;




public class App {
  public static void main(String[] args) {
    FileIn.checkinputFilePath();
    File excel = FileIn.getInputFile();
    FileInputStream fis = null;
    try {
      fis = new FileInputStream(excel);
    } catch (FileNotFoundException e) {
      e.printStackTrace();
    }

    XSSFWorkbook wb = null;
    try {
      wb = new XSSFWorkbook(fis);
    } catch (IOException e) {
      e.printStackTrace();
    }   

    XSSFSheet sheet = wb.getSheetAt(0);

    Iterator<Row> itr = sheet.iterator(); 
    ArrayList<Student> students = new ArrayList<>();
    int counter = 0;
    while (itr.hasNext()) {
      Row row = itr.next();  
      if(counter != 0) {
        Student student = new Student();
        
        for(int i = 0; i < row.getLastCellNum(); i++) {
          switch(i) {
            case 0: 
              student.setNo((int)row.getCell(i).getNumericCellValue());
              break;
            case 1: 
              student.setId(new BigDecimal(row.getCell(i).toString()).toPlainString());
              break;
            case 2: 
              student.setName(row.getCell(i).getStringCellValue());
              break;
            case 3: 
              student.setHw1(row.getCell(i).getNumericCellValue());
              break;
            case 4: 
              student.setHw2(row.getCell(i).getNumericCellValue());
              break;
            case 5: 
              student.setHw3(row.getCell(i).getNumericCellValue());
              break;
            case 6: 
              student.setMidterm(row.getCell(i).getNumericCellValue());
              break;
            case 7: 
              student.set_final(row.getCell(i).getNumericCellValue());
              break;
          }
        }
        students.add(student);
      }
      counter++;
    }
    for(Student student : students) {
      System.out.println(student.getName() + " " + gradesTable(student.getGrade()));
    }
  }

  private static String gradesTable(double grade) {
    if(grade >= 90)
      return "A+";
    else if(grade >= 85)
      return "A";
    else if(grade >= 80)
      return "A-";
    else if(grade >= 77)
      return "B+";
    else if(grade >= 73)
      return "B";
    else if(grade >= 70)
      return "B-";
    else if(grade >= 67)
      return "C+";
    else if(grade >= 63)
      return "C";
    else if(grade >= 60)
      return "C-";
    else if(grade >= 50)
      return "D";
    else
      return "E";
  }
}