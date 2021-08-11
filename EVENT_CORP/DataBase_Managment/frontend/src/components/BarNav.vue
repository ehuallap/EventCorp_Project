<template>
  <div id="app">
  <nav class="navbar navbar-expand-lg">
    <div class="container">
      <a class="navbar-brand" href="#">
        <img  class="logo-brand" src="../assets/logoo.png" alt="logo">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation">
        <ion-icon name="grid-outline"></ion-icon>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/" id="Inicio">Inicio </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/example" id="Calendario">Calendario</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" id="SobreNosotros">Sobre Nosotros</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" id="Contáctanos">Contáctanos</a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <button type="button" class="btn btn-outline-secondary" href="#" id="Ingresar">Ingresar</button>

          </li>
          <li class="nav-item">
            <a class="btn btn-primary" href="#" role="button" id="Inscribirse">Inscribirse</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  </div>
</template>

<script>
export default {
  name: "BarNav"
}
</script>

<style scoped>
  img.logo-brand {
    height: auto;
    width: auto;
    max-height: 300px;
    max-width: 300px;
  }
</style>
