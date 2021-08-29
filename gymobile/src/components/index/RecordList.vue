<template>
  <div id="recordList">
    <div v-for="wait in waitList"
         :class="{'recordList-wait':wait.state===1,'recordList-already':wait.state===2}" >
      <div class="div-1">
        <span class="span-1">编号:{{wait.id}}</span>
        <span class="span-2"><i class="el-icon-time" />{{ $moment(wait.sbsj).format('YYYY/MM/DD HH:mm:ss')}}</span>
      </div>
      <div class="div-2">
        <span>报修类别:{{wait.dict_description}}-{{wait.ditem_value}}</span>
      </div>
      <div class="div-3">
        <span class="span-3">{{wait.bxnr}}</span>
        <span class="span-4" v-text="wait.state==1?'已派单':'已处理'"></span>
      </div>
    </div>
  </div>
</template>

<script>
import {APIBASEURL} from "../../constants/global"

export default {
  name: "RecordList",
  data(){
    return{
      waitList:[],
      alreadyList:[],

    }
  },
  mounted() {
    this.axios({
      method: 'get',
      url: `${APIBASEURL}getBxdList?worlId=41790787`
    }).then(res => {
      this.waitList=res.data
      console.log(this.waitList);
    })
  }
}
</script>

<style scoped>
*{
  margin: 0;
  padding: 0;
}
#recordList{
  text-align: center;
}
.recordList-wait{
  width: 550px;
  height: 150px;
  background-color: #10b05a;
  margin-top: 20px;
  border-radius: 20px;
  margin-left: auto;
  margin-right: auto;
  text-align: left;
}
.recordList-already{
  width: 550px;
  height: 150px;
  background-color: #ffffff;
  margin-top: 20px;
  border-radius: 20px;
  margin-left: auto;
  margin-right: auto;
  text-align: left;
}
.recordList-wait .div-1{
  width: 550px;
  height: 50px;
}
.recordList-wait .div-1 .span-1{
  margin-left: 30px;
  line-height: 60px;
  color: #F5F5F5;
  font-size: 18px;
}
.recordList-wait .div-1 .span-2{
  margin-left: 250px;
  line-height: 60px;
  color: #F5F5F5;
  font-size: 18px;
}
.recordList-wait .div-2{
  width: 550px;
  height: 50px;
}
.recordList-wait .div-2>span{
  font-weight: bold;
  font-size: 26px;
  color: white;
  margin-left: 30px;
  line-height: 60px;
}
.recordList-wait .div-3{
  width: 550px;
  height: 50px;
 }
.recordList-wait .div-3 .span-3{
  margin-left: 30px;
  color: #F5F5F5;
  font-size: 20px;
}
.recordList-wait .div-3 .span-4{
  position: absolute;
  left: 450px;
  color: white;
  font-size: 22px;
  font-weight: bold;
}
.recordList-already .div-1{
  width: 550px;
  height: 50px;
}
.recordList-already .div-1 .span-1{
  margin-left: 30px;
  line-height: 60px;
  color: #616161;
  font-size: 18px;
}
.recordList-already .div-1 .span-2{
  margin-left: 250px;
  line-height: 60px;
  color: #616161;
  font-size: 18px;
}
.recordList-already .div-2{
  width: 550px;
  height: 50px;
}
.recordList-already .div-2>span{
  font-weight: bold;
  font-size: 26px;
  color: #10b05a;
  margin-left: 30px;
  line-height: 60px;
}
.recordList-already .div-3{
  width: 550px;
  height: 50px;
}
.recordList-already .div-3 .span-3{
  margin-left: 30px;
  color: #616161;
  font-size: 20px;
}
.recordList-already .div-3 .span-4{
  position: absolute;
  left: 450px;
  color: black;
  font-size: 22px;
  font-weight: bold;
}
</style>
