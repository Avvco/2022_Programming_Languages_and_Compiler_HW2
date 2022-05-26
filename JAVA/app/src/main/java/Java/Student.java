package Java;

public class Student {
  private int no;
  private String id;
  private String name;
  private double hw1;
  private double hw2;
  private double hw3;
  private double midterm;
  private double _final;
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public double getHw1() {
    return hw1;
  }
  public void setHw1(double hw1) {
    this.hw1 = hw1;
  }
  public double getHw2() {
    return hw2;
  }
  public void setHw2(double hw2) {
    this.hw2 = hw2;
  }
  public double getHw3() {
    return hw3;
  }
  public void setHw3(double hw3) {
    this.hw3 = hw3;
  }
  public double getMidterm() {
    return midterm;
  }
  public void setMidterm(double midterm) {
    this.midterm = midterm;
  }
  public double get_final() {
    return _final;
  }
  public void set_final(double _final) {
    this._final = _final;
  }
  @Override
  public String toString() {
    return "Student [_final=" + _final + ", hw1=" + hw1 + ", hw2=" + hw2 + ", hw3=" + hw3 + ", id=" + id + ", midterm="
        + midterm + ", name=" + name + ", no=" + no + "]";
  }

  public double getGrade() {
    double grade = hw1*0.1 + hw2*0.1 + hw3*0.1 + midterm*0.3 + _final*0.4;
    return Math.round(grade * 100.0) / 100.0;
  }

}
