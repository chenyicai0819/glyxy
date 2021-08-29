<template>
  <div id="headers">
    <div id="headers-img-1" style="width: 80%">
      <el-avatar style="margin-top: 15px;margin-left: 15px" src="http://localhost:8088/images/img.png"></el-avatar>
    </div>
    <div id="headers-img-2" style="width: 20%">
      <el-badge :value="bxdNum" class="item" style="margin-top: 20px;margin-right: 30px">
        <el-popover
          placement="top-start"
          title="维修中"
          width="200"
          trigger="hover"
          :content=bxdNumMessge
        >
          <el-button slot="reference" class="el-icon-message-solid" style="color: white;font-size: 27px;background-color: #242f41;border: none"></el-button>
        </el-popover>
      </el-badge>
      <el-avatar style="margin-top: 15px;margin-left: 15px" src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png"></el-avatar>
      <el-dropdown >
        <p class="el-dropdown-link">
          系统管理员<i class="el-icon-arrow-down el-icon--right"></i>
        </p>
        <el-dropdown-menu slot="dropdown">
          <router-link to="/" class="logout-button">
          <el-dropdown-item style="width: 100px;height: 40px">退出登录</el-dropdown-item>
          </router-link>
        </el-dropdown-menu>
      </el-dropdown>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import {APIBASEURL} from "../../constants/global";

export default {
  name: "Headers",
  data(){
    return{
      visible: false,
      bxdNum:'',
      bxdNumMessge:'',
    }
  },
  methods:{
    logout(){
      console.log("aaa");
      this.$router.push('/');
    }
  },
  mounted(){
    this.axios({
      method: 'get',
      url: `${APIBASEURL}getBxdNum`
    }).then(res => {
      console.log("待处理保修单"+res.data);
      this.bxdNum=res.data
      this.bxdNumMessge="还有"+res.data+"条报修等待处理喔~"
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
  background-color: #242F41;
  width: 100%;
  height: 70px;
  display: flex;
  justify-content: left;
}
#headers-img-1{
  display: flex;
  justify-content: left;
}
#headers-img-2{
  display: flex;
  justify-content: right;
}
.el-dropdown-link {
  cursor: pointer;
  color: #409EFF;
  font-size: 16px;
  padding-top: 22px;
  padding-left: 10px;
}
.el-icon-arrow-down {
  font-size: 12px;
}
.logout-button{
  text-decoration: none;
}
</style>
