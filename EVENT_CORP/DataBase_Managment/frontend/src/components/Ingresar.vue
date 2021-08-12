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
                                <input type=text class="form-control" id="Email" placeholder="Dirección de corro electrónico" v-model="usuarioNuevo.email"><br>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <h2>Contraseña:</h2>
                            <div class="form-group">
                                <input type=text class="form-control" id="Contraseña" placeholder="Contraseña" v-model="usuarioNuevo.password">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="button" class="btn btn-primary" @click="ingresar">Ingresar</button>
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
      usuarioNuevo: {
        password: "",
        email: ""
      },
      token: {}
    }
  },
  methods: {
    async ingresar() {
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
              password: this.usuarioNuevo['password'].toString()
            })
            })
          const array = await this.token.json()
          console.log(array['token']);
        }
  }
}
</script>

<style scoped>
.container{
    padding: 20px;
}

.content-center{text-align: center;max-width:  1000px;margin: 20px auto 20px auto; }

.container-white{background: white;border-radius: 25px;}
</style>
