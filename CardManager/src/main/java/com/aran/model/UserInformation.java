package com.aran.model;

import java.util.Date;

public class UserInformation {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.id
     *
     * @mbg.generated
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.nameCn
     *
     * @mbg.generated
     */
    private String namecn;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.nameEn
     *
     * @mbg.generated
     */
    private String nameen;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.id_number
     *
     * @mbg.generated
     */
    private String idNumber;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.email
     *
     * @mbg.generated
     */
    private String email;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.tel
     *
     * @mbg.generated
     */
    private String tel;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.source
     *
     * @mbg.generated
     */
    private Integer source;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.admin_id
     *
     * @mbg.generated
     */
    private Integer adminId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.rank_id
     *
     * @mbg.generated
     */
    private Integer rankId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.education
     *
     * @mbg.generated
     */
    private Integer education;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.has_car
     *
     * @mbg.generated
     */
    private Integer hasCar;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.has_house
     *
     * @mbg.generated
     */
    private Integer hasHouse;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.salary
     *
     * @mbg.generated
     */
    private Integer salary;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.status
     *
     * @mbg.generated
     */
    private Integer status;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.create_time
     *
     * @mbg.generated
     */
    private Date createTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_information.last_update_time
     *
     * @mbg.generated
     */
    private Date lastUpdateTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.id
     *
     * @return the value of user_information.id
     *
     * @mbg.generated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.id
     *
     * @param id the value for user_information.id
     *
     * @mbg.generated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.nameCn
     *
     * @return the value of user_information.nameCn
     *
     * @mbg.generated
     */
    public String getNamecn() {
        return namecn;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.nameCn
     *
     * @param namecn the value for user_information.nameCn
     *
     * @mbg.generated
     */
    public void setNamecn(String namecn) {
        this.namecn = namecn == null ? null : namecn.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.nameEn
     *
     * @return the value of user_information.nameEn
     *
     * @mbg.generated
     */
    public String getNameen() {
        return nameen;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.nameEn
     *
     * @param nameen the value for user_information.nameEn
     *
     * @mbg.generated
     */
    public void setNameen(String nameen) {
        this.nameen = nameen == null ? null : nameen.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.id_number
     *
     * @return the value of user_information.id_number
     *
     * @mbg.generated
     */
    public String getIdNumber() {
        return idNumber;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.id_number
     *
     * @param idNumber the value for user_information.id_number
     *
     * @mbg.generated
     */
    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber == null ? null : idNumber.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.email
     *
     * @return the value of user_information.email
     *
     * @mbg.generated
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.email
     *
     * @param email the value for user_information.email
     *
     * @mbg.generated
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.tel
     *
     * @return the value of user_information.tel
     *
     * @mbg.generated
     */
    public String getTel() {
        return tel;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.tel
     *
     * @param tel the value for user_information.tel
     *
     * @mbg.generated
     */
    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.source
     *
     * @return the value of user_information.source
     *
     * @mbg.generated
     */
    public Integer getSource() {
        return source;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.source
     *
     * @param source the value for user_information.source
     *
     * @mbg.generated
     */
    public void setSource(Integer source) {
        this.source = source;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.admin_id
     *
     * @return the value of user_information.admin_id
     *
     * @mbg.generated
     */
    public Integer getAdminId() {
        return adminId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.admin_id
     *
     * @param adminId the value for user_information.admin_id
     *
     * @mbg.generated
     */
    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.rank_id
     *
     * @return the value of user_information.rank_id
     *
     * @mbg.generated
     */
    public Integer getRankId() {
        return rankId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.rank_id
     *
     * @param rankId the value for user_information.rank_id
     *
     * @mbg.generated
     */
    public void setRankId(Integer rankId) {
        this.rankId = rankId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.education
     *
     * @return the value of user_information.education
     *
     * @mbg.generated
     */
    public Integer getEducation() {
        return education;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.education
     *
     * @param education the value for user_information.education
     *
     * @mbg.generated
     */
    public void setEducation(Integer education) {
        this.education = education;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.has_car
     *
     * @return the value of user_information.has_car
     *
     * @mbg.generated
     */
    public Integer getHasCar() {
        return hasCar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.has_car
     *
     * @param hasCar the value for user_information.has_car
     *
     * @mbg.generated
     */
    public void setHasCar(Integer hasCar) {
        this.hasCar = hasCar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.has_house
     *
     * @return the value of user_information.has_house
     *
     * @mbg.generated
     */
    public Integer getHasHouse() {
        return hasHouse;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.has_house
     *
     * @param hasHouse the value for user_information.has_house
     *
     * @mbg.generated
     */
    public void setHasHouse(Integer hasHouse) {
        this.hasHouse = hasHouse;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.salary
     *
     * @return the value of user_information.salary
     *
     * @mbg.generated
     */
    public Integer getSalary() {
        return salary;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.salary
     *
     * @param salary the value for user_information.salary
     *
     * @mbg.generated
     */
    public void setSalary(Integer salary) {
        this.salary = salary;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.status
     *
     * @return the value of user_information.status
     *
     * @mbg.generated
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.status
     *
     * @param status the value for user_information.status
     *
     * @mbg.generated
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.create_time
     *
     * @return the value of user_information.create_time
     *
     * @mbg.generated
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.create_time
     *
     * @param createTime the value for user_information.create_time
     *
     * @mbg.generated
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_information.last_update_time
     *
     * @return the value of user_information.last_update_time
     *
     * @mbg.generated
     */
    public Date getLastUpdateTime() {
        return lastUpdateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_information.last_update_time
     *
     * @param lastUpdateTime the value for user_information.last_update_time
     *
     * @mbg.generated
     */
    public void setLastUpdateTime(Date lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }
}