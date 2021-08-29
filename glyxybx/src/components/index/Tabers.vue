<template>
  <div id="tabers">
    <router-link to="/mainContent" class="menu-name">
      <el-tag closable :type="''" :class="[openOfClose.t1 ? 'tagOpen' :'tagClose']" @close="openOfClose.t1=false" @click="clickTabs">首页</el-tag>
    </router-link>
    <router-link to="/index/districtManagement" class="menu-name">
      <el-tag closable :type="''" :class="[openOfClose.t2 ? 'tagOpen' :'tagClose']" @close="openOfClose.t2=false" @click="clickTabs">区域管理</el-tag>
    </router-link>
    <router-link to="/index/repairForm" class="menu-name">
      <el-tag closable :type="''" :class="[openOfClose.t3 ? 'tagOpen' :'tagClose']" @close="openOfClose.t3=false" @click="clickTabs">报修单</el-tag>
    </router-link>
    <router-link to="/index/taker" class="menu-name">
      <el-tag closable :type="''" :class="[openOfClose.t4 ? 'tagOpen' :'tagClose']" @close="openOfClose.t4=false" @click="clickTabs">接单人</el-tag>
    </router-link>
    <router-link to="/index/reviewer" class="menu-name">
      <el-tag closable :type="''" :class="[openOfClose.t5 ? 'tagOpen' :'tagClose']" @close="openOfClose.t5=false" @click="clickTabs">审核员</el-tag>
    </router-link>
    <router-link to="/index/consumables" class="menu-name">
      <el-tag closable :type="''" :class="[openOfClose.t6 ? 'tagOpen' :'tagClose']" @close="openOfClose.t6=false" @click="clickTabs">耗材管理</el-tag>
    </router-link>
  </div>
</template>

<script>
export default {
  name: "Tabers",
  data() {
    return {
      openOfClose:{
        t1:true,
        t2:false,
        t3:false,
        t4:false,
        t5:false,
        t6:false,
      }
    }
  },
  methods: {
    clickTabs(){

    }
  },
  props:{
    toTarBar:'',
  },
  watch:{
    toTarBar(val, oldVal){
      if (val=='首页'){this.openOfClose.t1=true
      }else if(val=='区域管理'){this.openOfClose.t2=true
      }else if(val=='报修单'){this.openOfClose.t3=true
      }else if(val=='接单人'){this.openOfClose.t4=true
      }else if(val=='审核员'){this.openOfClose.t5=true
      }else if(val=='耗材管理'){this.openOfClose.t6=true
      }
    },
  },
}
</script>

<style scoped>
#tabers{
  height: 30px;
}
.tagClose{
  display: none;
  font-size: 20px;
}
.tagOpen{
  display: inline;
  font-size: 20px;
}
.menu-name{
  text-decoration: none;
}
</style>
