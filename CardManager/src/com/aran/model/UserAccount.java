package com.aran.model;

import java.util.Date;

public class UserAccount {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_account.id
     *
     * @mbg.generated
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_account.id_number
     *
     * @mbg.generated
     */
    private String idNumber;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_account.total_loan
     *
     * @mbg.generated
     */
    private String totalLoan;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_account.surplus_loan
     *
     * @mbg.generated
     */
    private String surplusLoan;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_account.create_time
     *
     * @mbg.generated
     */
    private Date createTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_account.end_time
     *
     * @mbg.generated
     */
    private Date endTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_account.id
     *
     * @return the value of user_account.id
     *
     * @mbg.generated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_account.id
     *
     * @param id the value for user_account.id
     *
     * @mbg.generated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_account.id_number
     *
     * @return the value of user_account.id_number
     *
     * @mbg.generated
     */
    public String getIdNumber() {
        return idNumber;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_account.id_number
     *
     * @param idNumber the value for user_account.id_number
     *
     * @mbg.generated
     */
    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber == null ? null : idNumber.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_account.total_loan
     *
     * @return the value of user_account.total_loan
     *
     * @mbg.generated
     */
    public String getTotalLoan() {
        return totalLoan;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_account.total_loan
     *
     * @param totalLoan the value for user_account.total_loan
     *
     * @mbg.generated
     */
    public void setTotalLoan(String totalLoan) {
        this.totalLoan = totalLoan == null ? null : totalLoan.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_account.surplus_loan
     *
     * @return the value of user_account.surplus_loan
     *
     * @mbg.generated
     */
    public String getSurplusLoan() {
        return surplusLoan;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_account.surplus_loan
     *
     * @param surplusLoan the value for user_account.surplus_loan
     *
     * @mbg.generated
     */
    public void setSurplusLoan(String surplusLoan) {
        this.surplusLoan = surplusLoan == null ? null : surplusLoan.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_account.create_time
     *
     * @return the value of user_account.create_time
     *
     * @mbg.generated
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_account.create_time
     *
     * @param createTime the value for user_account.create_time
     *
     * @mbg.generated
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_account.end_time
     *
     * @return the value of user_account.end_time
     *
     * @mbg.generated
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_account.end_time
     *
     * @param endTime the value for user_account.end_time
     *
     * @mbg.generated
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}