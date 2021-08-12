<template>
  <div class="content-center">
    <section id="Calendario">
        <div class="container">
            <div class="content-center">
                <h1>Calendario</h1>
                <h3>Próximos eventos</h3>
            </div>
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
              </div>
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="../assets/evento.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="../assets/evento2.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="../assets/evento3.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="../assets/evento4.jpg" class="d-block w-100" alt="...">
                </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
            <table class="table">
            <thead>
              <tr>
                <th scope="col">ID del Evento</th>
                <th scope="col">Titulo</th>
                <th scope="col">Descripción del evento</th>
                <th scope="col">Fecha de inicio</th>
                <th scope="col">Fecha de culminación</th>
                <th scope="col">Suscriptores</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="item in eventos" :key="item.id">
                <th scope="row">{{item.ID}}</th>
                <td>{{item.Title}}</td>
                <td>{{item.Description}}</td>
                <td>{{item.Starts}}</td>
                <td>{{item.Ends}}</td>
                <td>{{item.Subscribers}}</td>
              </tr>
            </tbody>
            </table>
        </div>
      <container-ins/>
    </section>
  </div>
</template>

<script>
import axios  from 'axios'
import containerIns from "./container-inscribete";

export default {
  name: "Calendario",
  components: {
    containerIns
  },
  data() {
    return {
      eventos: [],
      pos: 0
    }
  },
  created() {
    this.$http.get('http://127.0.0.1:5000/event/get_events', '', {'authorization': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdGF0ZSI6IkhhIHNpZG8gYXV0b3JpemFkbyIsImV4cGlyYXRpb24iOiIyMDc2LTA1LTE1IDIyOjI0OjEzLjk3NjYwOCJ9.Cebe8VoflPVR4Co4kcvHa75VsTGh-GtmGKDVjCXBOhc'})
    .then(res => this.eventos = res.body);
  },
  methods: {
  }
}

</script>

<style scoped>
  .container{
    padding: 50px;
  }
  .Icon3D{
    min-width: 120px; max-width: 310px;
    margin-top: 20px;
  }
  .container-white{
    background: white;
    border-radius: 25px;
    margin-top: 45px;
  }
  .card {
    margin-top: 30px;
    text-align: center;
    align-self: center;
  }
  .content-center {
    text-align: center;
    margin-bottom: 25px;
  }
  .content-left {
    text-align: left;
  }
  .d-block {
    min-height: 100px;
    height: 750px;
    width: auto;
  }
  .table {
    margin-top: 50px;
  }
  h1{
    font-family: 'Poppins', sans-serif;
    font-size: 50px; font-weight: 595;
    line-height: 60px;
  }
  h2{
    font-family: 'Poppins', sans-serif;
    font-size: 25px;
    font-weight: 595;
    line-height: 60px;}
</style>
