<template>
  <section id="Inscribirse">
    <div class="container text-center">
      <div class="container-white">
        <h2>¡Nos alegramos que hayas decidido unirte a nosotros!</h2>
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
                <input type=text class="form-control" id="Nombre" placeholder="Nombre" v-model="nuevoUsuario.first_name">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <input type=text class="form-control" id="Apellido" placeholder="Apellido" v-model="nuevoUsuario.last_name">
              </div>
            </div>
            <div class="col-md-12">
              <h2>Email:</h2>
              <div class="form-group">
                <input type=text class="form-control" id="Email"
                       placeholder="Dirección de correo electrónico" v-model="nuevoUsuario.email">
              </div>
            </div>
            <div class="col-md-12">
              <h2>Contraseña:</h2>
              <div class="form-group">
                <input type=password class="form-control" id="Contraseña" placeholder="Contraseña" v-model="nuevoUsuario.password">
              </div>
            </div>
            <div class="col-md-12 mt-3">
              <button type="button" class="btn btn-primary" @click="crear" v-on:click="show = !show">Registrarse</button>
            </div>
            <div>
              <transition name="bounce">
                <p v-if="show"> Completa todos los campos por favor! </p>
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
  name: "Inscribirse",
  data() {
    return {
      nuevoUsuario: {
        'last_name': '',
        'first_name': '',
        'email': '',
        'events_joined': 0,
        'password': ''
      },
      result: '',
      show: false
    }
  },
  methods: {
    pass() {
      this.show = !this.show
    },
    async crear() {
      if (this.nuevoUsuario.first_name !== '' && this.nuevoUsuario.last_name !== '' && this.nuevoUsuario.email !== '' && this.nuevoUsuario.password !== '') {
        // Opciones por defecto estan marcadas con un *
        this.result = await fetch('http://127.0.0.1:5000/user/create_user', {
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
            last_name: this.nuevoUsuario['last_name'].toString(),
            first_name: this.nuevoUsuario['first_name'].toString(),
            email: this.nuevoUsuario['email'].toString(),
            events_joined: this.nuevoUsuario['events_joined'].toString(),
            password: this.nuevoUsuario['password'].toString()
          })
        })
        const array = await this.result.json()
        console.log(array)
        if (array) {
          await this.$router.push("/ingresar")
        }
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
.col-md-12 {
  text-align: left;
}
.container {
  padding: 20px;
}

.content-center {
  text-align: center;
  max-width: 1000px;
  margin: 20px auto 20px auto;
}

.container-white {
  background: white;
  border-radius: 25px;
}

</style>
