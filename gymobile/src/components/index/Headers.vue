<template>
  <div id="headers">
    <div id="header-first">
      <div id="header-img">
        <el-avatar icon="el-icon-user-solid"></el-avatar>
      </div>
      <div id="header-meg">
        <div id="header-name">
          <p>姓名：{{username}}</p>
          <p>工号：{{ workId }}</p>
        </div>
        <div id="header-button">
          <el-button round style="background-color: #10b05a;color: white">我要申报</el-button>
          <el-button round style="background-color: #10b05a;color: white">维修历史</el-button>
        </div>
      </div>
    </div>
    <div id="header-time">
      <span>剩余工时（小时）：</span>
      <el-progress :percentage="100" :show-text=false style="width: 150px;margin-top: 7px" :stroke-width="12"></el-progress>
      <span>12</span>
    </div>

  </div>
</template>

<script>
import {APIBASEURL} from "../../constants/global";

export default {
  name: "Headers",
  data(){
    return{
      username:'',
      workId:'',
    }
  },
  mounted() {
    this.axios({
      method: 'get',
      url: `${APIBASEURL}getJdr?userId=212016505`
    }).then(res => {
      console.log(res.data);
      this.username=res.data.xm
      this.workId=res.data.ybid
    })
  }
}
</script>

<style scoped>
*{
  margin: 0;
  padding: 0;
}
#headers{
  background-color: #ffffff;
  height: 100px;
  width: 650px;
  padding-top: 20px;
}
#header-first{
  height: 60px;
  width: 650px;
  display: flex;
  justify-content: left;
  font-size: 20px;
}
#header-img{
  width: 130px;
  height: 60px;
}
#header-meg{
  width: 520px;
  height: 60px;
  display: flex;
  justify-content: left;
}
#header-name{
  width: 170px;
}
#header-button{
  width: 350px;
}
#header-time{
  width: 100%;
  font-size: 20px;
  display: flex;
  justify-content: left;
  margin-left: 135px;
}
</style>
