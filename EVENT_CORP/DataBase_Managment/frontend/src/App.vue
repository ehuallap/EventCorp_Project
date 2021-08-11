<template>
  <div id="app">
    <!-- Router -->
    <nav>
      <ul>
        <li>
          <router-link to='/'> Inicio </router-link>
        </li>
        <li>
          <router-link to='/example'> Example </router-link>
        </li>
      </ul>
    </nav>
    <router-view></router-view>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld'
import SecondExample from "./components/SecondExample";

export default {
  name: 'App',
  components: {
    HelloWorld,
    SecondExample
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
