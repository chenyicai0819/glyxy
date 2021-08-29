<template>
  <div id="tarbars">
    <div id="tarbars-menus">
      <el-menu
        default-active="1"
        class="el-menu-vertical-demo"
        @open="handleOpen"
        @close="handleClose"
        background-color="#545c64"
        text-color="#fff"
        active-text-color="#ffd04b"
        style="width: 150px;height: 660px;"
      >
        <router-link to="/mainContent" class="menu-name">
        <el-menu-item index="1" @click="clickTb(tarbar.tb1)">
          <i class="el-icon-s-home"></i>
          {{tarbar.tb1}}
        </el-menu-item></router-link>
        <router-link to="/index/districtManagement" class="menu-name">
        <el-menu-item index="2" @click="clickTb(tarbar.tb2)">
          <i class="el-icon-s-promotion"></i>
          {{tarbar.tb2}}
        </el-menu-item></router-link>
        <router-link to="/index/repairForm" class="menu-name">
        <el-menu-item index="3" @click="clickTb(tarbar.tb3)">
          <i class="el-icon-document"></i>
          {{tarbar.tb3}}
        </el-menu-item></router-link>
        <router-link to="/index/taker" class="menu-name">
        <el-menu-item index="4" @click="clickTb(tarbar.tb4)">
          <i class="el-icon-user-solid"></i>
          {{tarbar.tb4}}
        </el-menu-item></router-link>
        <router-link to="/index/reviewer" class="menu-name">
        <el-menu-item index="5" @click="clickTb(tarbar.tb5)">
          <i class="el-icon-s-custom"></i>
          {{tarbar.tb5}}
        </el-menu-item></router-link>
        <router-link to="/index/consumables" class="menu-name">
        <el-menu-item index="6" @click="clickTb(tarbar.tb6)">
          <i class="el-icon-s-grid"></i>
          {{tarbar.tb6}}
        </el-menu-item></router-link>
      </el-menu>
    </div>
    <div id="tarbars-Tabs">
      <Tabers v-bind:toTarBar="toTabers"/>
    </div>
  </div>

</template>

<script>
import Tabers from "./Tabers";
export default {
  name: "TarBar",
  components: {Tabers},
  data(){
    return{
      tarbar:{
        tb1:'首页',
        tb2:'区域管理',
        tb3:'报修单',
        tb4:'接单人',
        tb5:'审核员',
        tb6:'耗材管理'
      },
      toTabers:'',
    }
  },
  methods: {
    handleOpen(key, keyPath) {
      console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
      console.log(key, keyPath);
    },
    clickTb(treename){
      this.toTabers=treename;
    }
  }
}
</script>

<style scoped>
#tarbars{
  display: flex;
  justify-content: left;
}
.menu-name{
  color: white;
  text-decoration: none;
}
</style>
