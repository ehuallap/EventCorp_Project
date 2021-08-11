// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import BootstrapVue from "bootstrap-vue"

import VueResource from 'vue-resource'
Vue.use(VueResource)

import VueRouter from 'vue-router'
Vue.use(VueRouter)

import "bootstrap/dist/css/bootstrap.min.css"
import "bootstrap-vue/dist/bootstrap-vue.css"
Vue.use(BootstrapVue)

// AQUI SE IMPORTAN LOS COMPONENTES PARA EL ROUTE (EJM ABOUT, CALENDAR, ETC)
import HelloWorld from "./components/HelloWorld"
import SecondExample from "./components/SecondExample"

const router = new VueRouter({
  mode: 'history',
  base: __dirname,
  // AQUI SE IMPLEMENTAN LAS RUTAS
  routes: [
    {
      path: '/',
      component: HelloWorld
    },
    {
      path: '/example',
      component: SecondExample
    }
  ]
});

Vue.config.productionTip = false
new Vue({
  router,
  components: { App },
  template: '<App/>'
}).$mount('#app')
