package cn.edu.guet.entity;

public class Ewm {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ewm.id
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ewm.qid
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    private Integer qid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ewm.xxdd
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    private String xxdd;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ewm.id
     *
     * @return the value of ewm.id
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ewm.id
     *
     * @param id the value for ewm.id
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ewm.qid
     *
     * @return the value of ewm.qid
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    public Integer getQid() {
        return qid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ewm.qid
     *
     * @param qid the value for ewm.qid
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    public void setQid(Integer qid) {
        this.qid = qid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ewm.xxdd
     *
     * @return the value of ewm.xxdd
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    public String getXxdd() {
        return xxdd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ewm.xxdd
     *
     * @param xxdd the value for ewm.xxdd
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    public void setXxdd(String xxdd) {
        this.xxdd = xxdd == null ? null : xxdd.trim();
    }
}