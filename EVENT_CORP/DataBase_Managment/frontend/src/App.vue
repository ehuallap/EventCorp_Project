<template>
  <div id="app">
    <bar-nav/>
    <!-- Router -->
    <router-view/>

  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld'
import SecondExample from "./components/SecondExample"
import BarNav from "./components/BarNav"

export default {
  name: 'App',
  components: {
    HelloWorld,
    SecondExample,
    BarNav
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
