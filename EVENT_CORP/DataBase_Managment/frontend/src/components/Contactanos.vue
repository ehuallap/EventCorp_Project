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
                                <input type=text class="form-control" id="Nombre" placeholder="Nombre" v-model="consulta.name">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type=text class="form-control" id="Apellido" placeholder="Apellido" v-model="consulta.last_name">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <h2>Email:</h2>
                            <div class="form-group">
                                <input type=text class="form-control" id="Email" placeholder="Dirección de correo electrónico" v-model="consulta.email">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <h2>Mensaje:</h2>
                            <div class="form-group">
                                <input type=text class="form-control" id="Mensaje" placeholder="Hola! Que tal? . . . " v-model="consulta.message">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <br><a class="btn btn-primary" @click="enviar" v-on:click="show = !show">Enviar Mensaje</a>
                        </div>
                      <div>
                        <transition name="bounce">
                          <p v-if="show"> Llena todos los datos porfavor! </p>
                        </transition>
                      </div>
                    </div>
                </div>
            </div>
        </div>
  </section>
</template>

<script>
export default {
  name: "Contactanos",
  data() {
    return {
      consulta: {
        name: '',
        last_name: '',
        email: '',
        message: ''
      },
      show: false
    }
  },
  methods: {
    pass() {
      this.show = !this.show
    },
    async enviar() {
      if (this.consulta.name !== '' && this.consulta.last_name !== '' && this.consulta.email !== '' && this.consulta.message !== '') {
        await this.$router.push("/crearevento")
      } else {
        setTimeout(this.pass,1500);
      }
    }
  }
}
</script>

<style scoped>
  .bounce-enter-active {
      animation: bounce-in .5s;
  }
  .bounce-leave-active {
      animation: bounce-in .5s reverse;
  }
  @keyframes bounce-in {
    0% {
      transform: scale(0);
    }
    50% {
      transform: scale(1.5);
    }
    100% {
      transform: scale(1);
    }
  }
.container{
    padding: 20px;
}

.content-center{text-align: center;max-width:  1000px;margin: 20px auto 20px auto; }

</style>
