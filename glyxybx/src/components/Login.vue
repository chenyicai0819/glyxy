<template>
  <div id="login">
    <el-form
      :model="ruleForm"
      status-icon
      :rules="rules"
      ref="ruleForm"
      label-width="100px"
      class="demo-ruleForm"
      style="width: 500px"
    >
      <el-form-item label="账号" prop="username" class="ruleForm-item-input">
        <el-input type="password" v-model="ruleForm.username" autocomplete="off"></el-input>
      </el-form-item>
      <el-form-item label="密码" prop="password" class="ruleForm-item-input">
        <el-input type="password" v-model="ruleForm.password" autocomplete="off"></el-input>
      </el-form-item>
      <el-form-item >
        <el-button type="primary" @click="submitForm('ruleForm')" class="ruleForm-item-button">登录</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
export default {
  name: "Login",
  data() {
    var checkUsername = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请输入账号'));
      } else {
        callback();
      }
    };
    var cheackPassword=(rule,value,callback) =>{
      if (value === '') {
        callback(new Error('请输入密码'));
      } else {
        callback();
      }
    };
    return{
      ruleForm:{
        username:'',
        password:''
      },
      rules: {
        username: [
          { validator: checkUsername, trigger: 'blur' }
        ],
        password: [
          { validator: cheackPassword, trigger: 'blur' }
        ],
      }
    }
  },
  methods: {
    submitForm(formName){
      console.log("登录");
      this.$router.push('/index');
    },

  }
}
</script>

<style scoped>
*{
  margin: 0;
  padding: 0;
}
#login{
  display: flex;
  justify-content: center;
}
.ruleForm-item-input{
  padding-bottom: 20px;
}
.ruleForm-item-button{
  width: 100px;
  height: 40px;
}
</style>
