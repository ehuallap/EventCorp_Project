<template>
  <section id="Ingresar">
    <div class="container text-center">
      <div class="container-white">
        <h1>¡Hola de nuevo!</h1>
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
                            <h2>Dirección de correo electrónico: </h2>
                            <div class="form-group">
                                <input type=text class="form-control" id="Email" placeholder="Dirección de corro electrónico"><br>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <h2>Contraseña:</h2>
                            <div class="form-group">
                                <input type=text class="form-control" id="Contraseña" placeholder="Contraseña">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <br><a href="#" class="btn btn-primary">Ingresar</a>
                        </div>
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
