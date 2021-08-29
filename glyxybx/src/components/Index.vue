<template>
  <div id="index">
    <Headers/>
    <TarBars/>
    <router-view class="main"/>
  </div>
</template>

<script>
import Headers from "./index/Headers";
import TarBars from "./index/TarBars";
export default {
  name: "index",
  components: {Headers,TarBars},
  data(){
    return{

    }
  }
}
</script>

<style scoped>
*{
  margin: 0;
  padding: 0;
}
.main{
  position: absolute;
  top: 100px;
  left: 150px;
}
</style>
