<template>
  <div id="app">
  <nav class="navbar navbar-expand-lg">
    <div class="container">
      <a class="navbar-brand" href="/">
        <img  class="logo-brand" src="../assets/LogoPlanoWithout.png" alt="logo">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <ion-icon name="grid-outline"></ion-icon>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/" id="Inicio">Inicio </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/calendario" id="Calendario">Calendario</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/sobrenosotros" id="SobreNosotros">Sobre Nosotros</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/contactanos" id="Contáctanos">Contáctanos</a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="btn btn-outline-secondary" href="/ingresar" role="button" id="Ingresar">Ingresar</a>
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
  .logo-brand{width: auto; height: auto; min-width: 250px; max-width: 260px;}

  .navbar{ background-color:  rgb(230, 230, 230); min-height: 100px;}

  .nav-link{ font-family: 'Poppins', sans-serif, monospace; color: black; font-size: 17px}
  .nav-item{padding: 15px;}

  .nav-link:hover{ color: rgb(0, 0, 0);}
  .navbar-toggler{ font-size: 35px;}
  .navbar-toggler:focus {outline: none;}
  .container{
      padding-top: 20px;
  }
  #app {
    margin-top: -62px;
    margin-bottom: 50px;
  }
</style>
