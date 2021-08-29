<template>
  <div id="record">
    <p id="record-h1">工单记录</p>
    <el-button type="text" @click="signin = true" id="record-sign" class="record-p">签到</el-button>
    <el-button type="text" @click="signout = true" id="record-signout" class="record-p">签退</el-button>
    <el-button type="text" @click="showSignLog" id="record-log" class="record-p">记录</el-button>
    <div>
      <el-drawer
        title="签到"
        :before-close="cancelForm"
        :visible.sync="signin"
        direction="ttb"
        custom-class="demo-drawer"
        ref="drawer"
        :show-close="false"
        style="width: 650px;padding-top: 180px"
      >
        <div class="demo-drawer__content">
          <el-form :model="form">
            <el-form-item label="选择校区" :label-width="formLabelWidth" style="width: 300px;">
              <el-select v-model="form.region" placeholder="请选择校区" style="width: 500px;">
                <el-option label="临桂校区" value="临桂校区"></el-option>
                <el-option label="东城校区" value="东城校区"></el-option>
              </el-select>
            </el-form-item>
          </el-form>
          <div class="demo-drawer__footer">
            <el-button @click="cancelForm" style="width: 300px;height: 50px;">取 消</el-button>
            <el-button type="primary" @click="signinForm" :loading="loading" style="width: 300px;height: 50px;">
              {{ loading ? '提交中 ...' : '确 定' }}
            </el-button>
          </div>
        </div>
      </el-drawer>
    </div>
    <div>
      <el-drawer
        title="签到"
        :before-close="cancelForm"
        :visible.sync="signout"
        direction="ttb"
        custom-class="demo-drawer"
        ref="drawer"
        :show-close="false"
        style="width: 650px;padding-top: 180px"
      >
        <div class="demo-drawer__content">
          <el-form :model="form">
            <el-form-item label="选择校区" :label-width="formLabelWidth" style="width: 300px;">
              <el-select v-model="form.region" placeholder="请选择校区" style="width: 500px;">
                <el-option label="临桂校区" value="临桂校区"></el-option>
                <el-option label="东城校区" value="东城校区"></el-option>
              </el-select>
            </el-form-item>
          </el-form>
          <div class="demo-drawer__footer">
            <el-button @click="cancelForm" style="width: 300px;height: 50px;">取 消</el-button>
            <el-button type="danger" @click="signoutForm" :loading="loading" style="width: 300px;height: 50px;">
              {{ loading1 ? '提交中 ...' : '确 定' }}
            </el-button>
          </div>
        </div>
      </el-drawer>
    </div>
    <div>
      <el-drawer
        title="签到记录"
        :visible.sync="table"
        direction="ttb"
        size="50%"
        :show-close="false"
        style="width: 650px;padding-top: 180px">
        <el-table :data="gridData" style="margin-top: -50px">
          <el-table-column property="id" width="50"></el-table-column>
          <el-table-column property="xq" width="200"></el-table-column>
          <el-table-column property="qdsj"></el-table-column>
        </el-table>
      </el-drawer>
    </div>
  </div>
</template>

<script>
import {APIBASEURL} from "../../constants/global";

export default {
  name: "Record",
  data() {
    return {
      table: false,
      signin: false,
      signout: false,
      loading: false,
      loading1: false,
      form: {
        region: '',
      },
      gridData: [],
      formLabelWidth: '80px',
      timer: null,
    }
  },
  methods: {
    signinForm() {
      console.log(this.form.region)
      if (this.loading) {
        return;
      }
      this.loading = true;
      this.timer = setTimeout(() => {
        // 动画关闭需要一定的时间
        setTimeout(() => {
          this.loading = false;
        }, 200);

        this.loading = false;
        this.signin = false;
      }, 1000);
    },
    signoutForm() {
      console.log(this.form.region)
      if (this.loading1) {
        return;
      }
      this.loading1 = true;
      this.timer = setTimeout(() => {
        // 动画关闭需要一定的时间
        setTimeout(() => {
          this.loading1 = false;
        }, 200);

        this.loading1 = false;
        this.signout = false;
      }, 1000);
    },
    cancelForm() {
      this.loading = false;
      this.signin = false;
      this.loading1 = false;
      this.signout = false;
    },
    showSignLog(){
      this.axios({
        method: 'get',
        url: `${APIBASEURL}getqdbList?workId=41790787`
      }).then(res => {
        console.log(res.data)
        this.gridData=res.data
        console.log(this.gridData);
      })
      this.table=true;
    }
  }
}
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}

#record {
  width: 650px;
  height: 50px;
  background-color: #ffffff;
  display: flex;
  justify-content: left;
}

#record-h1 {
  font-size: 30px;
  font-family: "微软雅黑";
  font-weight: bold;
  margin-left: 40px;
  margin-right: 200px;
}

.record-p {
  margin-top: 10px;
  margin-left: 40px;
  height: 30px;

}
</style>
