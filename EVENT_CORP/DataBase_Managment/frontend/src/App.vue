<template>
  <div id="app">
    <bar-nav/>
    <router-view/>
  </div>
</template>

<script>
import BarNav from "./components/BarNav"

export default {
  name: 'App',
  components: {
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
