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

import SecondExample from "./components/SecondExample"
import Calendario from "./components/Calendario";
import index from "./components/index";
import SobreNosotros from "./components/SobreNosotros";
import Contactanos from "./components/Contactanos";
import Ingresar from "./components/Ingresar";
import Eventos from "./components/Eventos";
import Inscribirse from "./components/Inscribirse";

const router = new VueRouter({
  mode: 'history',
  base: __dirname,
  // AQUI SE IMPLEMENTAN LAS RUTAS
  routes: [
    {
      path: '/',
      component: index
    },
    {
      path: '/contactanos',
      component: Contactanos
    },
    {
      path: '/ingresar',
      component: Ingresar
    },
    {
      path: '/inscribirse',
      component: Inscribirse
    },
    {
      path: '/example',
      component: SecondExample
    },
    {
      path: '/calendario',
      component: Calendario
    },
    {
      path: '/sobrenosotros',
      component: SobreNosotros
    },
    {
      path: '/eventos',
      component: Eventos
    }
  ]
});

Vue.config.productionTip = false
new Vue({
  router,
  components: { App },
  template: '<App/>'
}).$mount('#app')
