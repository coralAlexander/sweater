package com.example.sweater.domain;

import javax.persistence.*;

@Entity
@Table(name = "balance")
public class SpecialistPrice {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @JoinColumn(name = "user_id")
    private Long userId ;
    private String specialisation;
    private Long price ;
    private Long paid ;
    private Long balance;
    private String comments;
    private String fileName;

    public SpecialistPrice(User user,String specialisation,Long price,Long paid , String comments){
        this.userId = user.getId();
        this.specialisation=specialisation;
        this.price = price;
        this.paid = paid;
        this.comments=comments;
    }

    public SpecialistPrice(){

    }


    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getSpecialisation() {
        return specialisation;
    }

    public void setSpecialisation(String specialisation) {
        this.specialisation = specialisation;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getPaid() {
        return paid;
    }

    public void setPaid(Long paid) {
        this.paid = paid;
    }

    public Long getBalance() {
        Long balance = price - paid;
        return balance;
    }

    public void setBalance(Long balance) {
        this.balance = balance;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
}
