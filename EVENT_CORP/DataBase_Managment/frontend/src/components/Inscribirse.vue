<template>
  <section id="Inscribirse">
    <div class="container text-center">
      <div class="container-white">
        <h1>¡Hola!</h1>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-7 col align-self-center">
          <div class="content-center">
            <img src="../assets/img04.png" style="min-width: 120px; max-width: 500px;" alt="Imagen Referencial">
          </div>
        </div>
        <div class="col-md-5 topmargin-sm">
          <div class="row">
            <div class="col-md-12">
              <h2>Nombre Completo:</h2>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <input type=text class="form-control" id="Nombre" placeholder="Nombre">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <input type=text class="form-control" id="Apellido" placeholder="Apellido">
              </div>
            </div>
            <div class="col-md-12">
              <h2>Email:</h2>
              <div class="form-group">
                <input type=text class="form-control" id="Email"
                       placeholder="Dirección de correo electrónico">
              </div>
            </div>
            <div class="col-md-12">
              <br><a href="/inscribirse" class="btn btn-primary">Inscribirse</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    </section>
</template>

<script>
export default {
  name: "Inscribirse"
}
</script>

<style scoped>

</style>
