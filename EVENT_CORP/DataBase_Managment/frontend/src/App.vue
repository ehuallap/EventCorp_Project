<template>
  <div id="app">
    <bar-nav/>
    <router-view/>
    <Footer/>
  </div>
</template>

<script>
import BarNav from "./components/BarNav";
import Footer from "./components/Footer";

export default {
  name: 'App',
  components: {
    BarNav,
    Footer
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
  word-wrap: break-word;
}
h1 {font-family: 'Poppins', sans-serif;font-size: 50px;font-weight: 595;line-height: 60px;}
h2 {font-family: 'Poppins', sans-serif;font-size: 25px;font-weight: 595;line-height: 60px;}
h5 {font-family: 'Poppins', sans-serif;}
p {font-size: 16px;font-weight: 400;}
hr {size: 2px;color: black;}
</style>
