package cn.edu.guet.entity;

public class DictitemKey {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column dictitem.itemID
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    private Integer itemid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column dictitem.itemCode
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    private String itemcode;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column dictitem.itemID
     *
     * @return the value of dictitem.itemID
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    public Integer getItemid() {
        return itemid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column dictitem.itemID
     *
     * @param itemid the value for dictitem.itemID
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    public void setItemid(Integer itemid) {
        this.itemid = itemid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column dictitem.itemCode
     *
     * @return the value of dictitem.itemCode
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    public String getItemcode() {
        return itemcode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column dictitem.itemCode
     *
     * @param itemcode the value for dictitem.itemCode
     *
     * @mbg.generated Fri Aug 27 11:25:46 CST 2021
     */
    public void setItemcode(String itemcode) {
        this.itemcode = itemcode == null ? null : itemcode.trim();
    }
}