package com.example.sweater.domain;

import javax.persistence.*;

@Entity
@Table(name = "contractor")
public class Contractor  {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long conId;
    private String conName;
    private Long conPhoneNum;
    private String specialisation;

    @JoinColumn(name = "user_id")
    private Long userId ;

    public Contractor() {
    }

    public Contractor(String conName, Long conPhoneNum,String specialisation, User user) {
        this.conName = conName;
        this.conPhoneNum = conPhoneNum;
        this.specialisation = specialisation;
        this.userId = user.getId();
    }

    public Long getConId() {
        return conId;
    }

    public void setConId(Long conId) {
        this.conId = conId;
    }


    public String getConName() {
        return conName;
    }

    public void setConName(String conName) {
        this.conName = conName;
    }

    public Long getConPhoneNum() {
        return conPhoneNum;
    }

    public void setConPhoneNum(Long conPhoneNum) {
        this.conPhoneNum = conPhoneNum;
    }

    public String getSpecialisation() {
        return specialisation;
    }

    public void setSpecialisation(String specialisation) {
        this.specialisation = specialisation;
    }

}
