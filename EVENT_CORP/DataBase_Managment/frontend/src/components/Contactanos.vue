<template>
<section id="Contact">
        <div class="container">
            <div class="row">
                <div class="col-md-7 col align-self-center">
                    <div class="content-center">
                        <img src="../assets/img03.png" style="min-width: 120px; max-width: 1500px;" alt="Imagen Referencial">
                    </div>
                </div>
                <div class="col-md-5 topmargin-sm">
                    <h1>Contáctanos</h1>
                    <p>Conoces algún evento que no esté en nuestro calendario? Contáctanos :D</p>
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
                            <h2>Mensaje:</h2>
                            <div class="form-group">
                                <input type=text class="form-control" id="Mensaje" placeholder="Hola! Que tal? . . . ">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <br><a href="#" class="btn btn-primary">Enviar Mensaje</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  </section>
</template>

<script>
export default {
  name: "Contactanos"
}
</script>

<style scoped>
.container{
    padding: 20px;
}

.content-center{text-align: center;max-width:  1000px;margin: 20px auto 20px auto; }

</style>
