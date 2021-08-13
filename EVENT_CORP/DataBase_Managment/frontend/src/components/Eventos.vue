<template>
<section id="Evento">
  <div class="container">
    <div v-for="item in evento" :key="item.id">
      <h1>{{item.Title}}</h1>
      <div class="container-white">
        <div class="row">
          <div class="col-md-5 col align-self-center">
            <div class="content-center">
              <div v-if="item.Img==null">
                <img src="../assets/ComoFunciona.png" style = "min-width: 10px; max-width:350px;" alt="Logo">
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="container">
              <h2>Fecha y hora: </h2><time>{{item.Starts}} - {{item.Ends}}</time>
              <h2>Descripción: </h2><h4>{{item.Description}}</h4>
              <h2>Organizador: </h2><h4>{{item.OrganizerName}}</h4>
              <h2>Categoria: </h2><h4>{{item.CategoryName}}</h4>
              <h2>Personas subscritas: </h2><h4>{{item.Subscribers}}</h4>
              <button class="mybtn" type="button">
                <ion-icon name="calendar-outline"></ion-icon>
              </button>
              <h5>Agregar a mi calendario</h5>
            </div>
          </div>
        </div>
      </div>
      <a class="mybtn mt-4" type="button" href="/calendario">
        <ion-icon name="arrow-back-circle-outline"></ion-icon>
      </a>
      <h2>Regresar al Calendario</h2>
    </div>
  </div>
</section>
</template>

<script>
import axios  from 'axios'
export default {
  name: "Eventos",
  data(){
    return {
      destinationId: this.$route.params.id,
      evento: [],
      pos: 0
    }
  },
  created() {
    this.$http.post('http://127.0.0.1:5000/event/get_event/',  {'id': this.destinationId})
      .then(function(response){
        console.log("HOLA")
        this.evento = response.data;
    });
  },
  methods: {
    pass() {
      this.showEvent = !this.showEvent
    },
  }
}
</script>

<style scoped>
.container{
    padding: 20px;
}

.content-center{text-align: center;max-width:  1000px;margin: 20px auto 20px auto; }

.container-white{background: white;border-radius: 25px;}
.mybtn{background-color: transparent; font-size: 45px; outline: none; border:none; color: black}
.mybtn:focus{ outline: none;}

</style>
