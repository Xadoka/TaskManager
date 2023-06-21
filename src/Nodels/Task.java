package Nodels;

public class Task {
    Long id;
    String name;
    String desciption;
    String deallineDate;

    public Task(Long id, String name, String desciption, String deallineDate) {
        this.id = id;
        this.name = name;
        this.desciption = desciption;
        this.deallineDate = deallineDate;
    }

    public Task() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesciption() {
        return desciption;
    }

    public void setDesciption(String desciption) {
        this.desciption = desciption;
    }

    public String getDeallineDate() {
        return deallineDate;
    }

    public void setDeallineDate(String deallineDate) {
        this.deallineDate = deallineDate;
    }
}
