import Vue from 'vue'
import Router from 'vue-router'
import Login from "../components/Login";
import Index from "../components/Index"
import MainContent from "../components/index/MainContent";
import Shouye from "../components/mainContent/Shouye";
import Consumables from "../components/mainContent/Consumables";
import DistrictManagement from "../components/mainContent/DistrictManagement";
import RepairForm from "../components/mainContent/RepairForm";
import Reviewer from "../components/mainContent/Reviewer";
import Taker from "../components/mainContent/Taker";

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Login',
      component: Login
    },
    {
      path:'/index',
      name:'Index',
      component:Index,
      redirect: '/mainContent',
      children:[
        {
          path: '/mainContent',
          name: 'MainContent',
          component: MainContent,
          children:[
            {
              path: '/mainContent',
              name: 'Shouye',
              component: Shouye,
            },
            {
              path: '/index/consumables',
              name: 'Consumables',
              component: Consumables,
            },
            {
              path: '/index/districtManagement',
              name: 'DistrictManagement',
              component: DistrictManagement,
            },
            {
              path: '/index/repairForm',
              name: 'RepairForm',
              component: RepairForm,
            },
            {
              path: '/index/reviewer',
              name: 'Reviewer',
              component: Reviewer,
            },
            {
              path: '/index/taker',
              name: 'Taker',
              component: Taker,
            }
          ]
        }
      ]
    }
  ]
})
