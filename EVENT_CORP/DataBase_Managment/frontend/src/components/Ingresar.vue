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
                            <h2>Nombre de usuario: </h2>
                            <div class="form-group">
                                <input type=text class="form-control" id="Email" placeholder="Nombre de usuario" v-model="usuarioNuevo.user"><br>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <h2>Contraseña:</h2>
                            <div class="form-group">
                                <input type=password class="form-control" id="Contraseña" placeholder="Contraseña" v-model="usuarioNuevo.password">
                            </div>
                        </div>
                        <div class="col-md-6 mt-5">
                            <button type="button" class="btn btn-primary" @click="ingresarClient" v-on:click="show = !show">Ingresar como usuario</button>
                        </div>
                        <div class="col-md-6 mt-5">
                            <button type="button" class="btn btn-primary" @click="ingresarAdmin" v-on:click="show = !show">Ingresar como manager</button>
                        </div>
                        <div>
                         <transition name="bounce">
                            <p v-if="show"> Contraseña o Usuario Incorrecto </p>
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
  name: "Ingresar",
  data() {
    return {
      show: false,
      usuarioNuevo: {
        password: "",
        user: ""
      },
      token: {},
      token_client: {}
    }
  },
  methods: {
    pass() {
      this.show = !this.show
    },
    async ingresarAdmin() {
      // Opciones por defecto estan marcadas con un *
      this.token = await fetch('http://127.0.0.1:5000/authorize', {
        method: 'POST', // *GET, POST, PUT, DELETE, etc.
        mode: 'cors', // no-cors, *cors, same-origin
        cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
        credentials: 'same-origin', // include, *same-origin, omit
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Content-Type': 'application/json'
        },
        redirect: 'follow', // manual, *follow, error
        referrerPolicy: 'no-referrer', // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
        body: JSON.stringify({
          password: this.usuarioNuevo['password'].toString(),
          user: this.usuarioNuevo['user'].toString()
        })
      })
      const array = await this.token.json()
      console.log(array['token'])
      console.log(array['code'])
      if ( array['code'] === "A") {
        localStorage.setItem('token', array['token']);
        await this.$router.push("/calendario")
      } else {
        setTimeout(this.pass,1500);
      }
    },

    async ingresarClient() {
      // Opciones por defecto estan marcadas con un *
      this.token_client = await fetch('http://127.0.0.1:5000/authorize_client', {
        method: 'POST', // *GET, POST, PUT, DELETE, etc.
        mode: 'cors', // no-cors, *cors, same-origin
        cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
        credentials: 'same-origin', // include, *same-origin, omit
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Content-Type': 'application/json'
        },
        redirect: 'follow', // manual, *follow, error
        referrerPolicy: 'no-referrer', // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
        body: JSON.stringify({
          password: this.usuarioNuevo['password'].toString(),
          user: this.usuarioNuevo['user'].toString()
        })
      })
      const array = await this.token_client.json()
      console.log(array['token'])
      console.log(array['code'])
      if (array['code'] === "A"){
        localStorage.setItem('token', array['token']);
        await this.$router.push("/calendario")
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

  .container-white{background: white;border-radius: 25px;}
</style>
