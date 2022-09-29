package model;

public class Customer {
private int Id;
private String name;
private String birthday;
private String address;

    public Customer() {
    }

    public Customer(int id, String name, String birthday, String address) {
        Id = id;
        this.name = name;
        this.birthday = birthday;
        this.address = address;
    }

    public int getId() {
        return Id;
    }

    public String getName() {
        return name;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setId(int id) {
        Id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
