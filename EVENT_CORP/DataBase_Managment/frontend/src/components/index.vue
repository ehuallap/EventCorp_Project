<template>
  <section id="Bienvenida">
    <div class="container">
      <div class="content-center">
        <div class="row">
          <div class="col-md-6 col align-self-center">
            <div class="content-left">
            <h1>No te pierdas ningun evento!</h1>
            <p>Consulta nuestro calendario con variados eventos, con información de acceso y más! Qué esperas?</p>
            <a class="btn btn-primary" href="/inscribirse" role="button">Inscribirse</a>
            <a class="btn btn-outline-secondary" href="#¿ComoFunciona?">¿Cómo funciona?</a>
            </div>
          </div>
          <div class="col-md-6">
            <div class="content-center">
              <img src="../assets/inscribirse.png" style = "min-width: 10px; max-width: 900px;" alt="Imagen Referencial">
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container" id="¿ComoFunciona?">
      <div class="container-white">
        <div class="row">
          <div class="col-md-6 col align-self-center">
            <div class="content-center">
              <img src="../assets/img01.png" style = "min-width: 10px; max-width:500px;" alt="Imagen Referencial">
              <div class="content-left">
                <br><h1>¿Cómo Funciona?</h1>
                <h3>Por si tienes alguna duda . . . </h3>
                <br>
                <a class="btn btn-primary" href="/inscribirse" role="button">Inscribirse</a>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <ul class="list">
              <li class="list-item">
                <h2>Paso 1</h2>
                <p>Inscribirse para poder obtener correos de eventos que te puedan interesar</p>
              </li>
              <hr>
              <li class="list-item">
                <h2>Paso 2</h2>
                <p>Si algun evento te interesa puedes agregarlo a tu calendario.</p>
              </li>
              <hr>
              <li class="list-item">
                <h2>Paso 3</h2>
                <p>Por ultimo, disfruta y aprende de los eventos que pudiste haberte perdido!</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <container-ins/>
  </section>
</template>

<script>
import containerIns from "./container-inscribete";

export default {
  name: "index",
  components: {
    containerIns
  }
}
</script>

<style scoped>
.container {
  padding: 20px;
}

.content-center{text-align: center;max-width:  1000px;margin: 20px auto 20px auto; }

.content-left{
    max-width:  800px;
    margin: 30px 30px 10px 30px;
    text-align: left;
}

.container-white{background: white;border-radius: 25px;}

.list{padding: 30px 20px 20px;}
.list-item {padding: 30px 20px 20px;list-style-type: none;}
</style>
