<template>
  <div id="app">
    <bar-nav/>
    <!-- Router -->

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
  font-family: 'Titillium Web', sans-serif;
  background-color: rgb(230, 230, 230);
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  margin-top: 90px;
}
</style>
