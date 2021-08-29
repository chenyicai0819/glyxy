<template>
  <div id="index">
    <Headers/>
    <Record/>
    <RecordList/>
  </div>
</template>

<script>
import Headers from "./index/Headers";
import Record from "./index/Record";
import RecordList from "./index/RecordList";

export default {
  name: "index",
  components: {RecordList, Record, Headers},
}
</script>

<style scoped>

</style>
