<template>
  <section id="Ingresar">
        <div class="container">
            <div class="container-white">
                <div class="content-center">
                    <h1>¡Hola de nuevo!</h1>
                </div>
            </div>
          <div class="container">
            <div class="container-white">
                <div class="row justify-content-center">
                  <div class="form-group">
                    <input type=text class="form-control" id="Email"
                           placeholder="Dirección de corro electrónico"><br>
                    <input type=text class="form-control" id="Contraseña" placeholder="Contraseña">
                  </div>
                </div>
                <div class="row justify-content-center">
                  <br><a href="#" class="btn btn-primary">Ingresar</a>
                </div>
            </div>
          </div>
        </div>
    </section>
</template>

<script>
export default {
  name: "Ingresar"
}
</script>

<style scoped>
.container{
    padding: 20px;
}

.content-center{text-align: center;max-width:  1000px;margin: 20px auto 20px auto; }

.container-white{background: white;border-radius: 25px;}
</style>
