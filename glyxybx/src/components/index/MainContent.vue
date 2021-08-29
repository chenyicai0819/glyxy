<template>
  <div class="mainContent">
    <router-view/>
  </div>
</template>

<script>

export default {
  name: 'MainContent',
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.mainContent{
  width:90.25%;
  background-color: #202d3d;
  float: right;
}
</style>
