<template>
        <section id="Calendario">
            <div class="container">
                <div class="content-center">
                    <h1>Calendario</h1>
                    <h3>Próximos eventos</h3>
                </div>
              <div v-for="item in eventos" :key="item.id">
                <div class="container-white">
                  <div class="row">
                    <div class="col-md-2 mt-3 ml-4">
                        <img src="../assets/ComoFunciona.png" style = "min-width: 10px; max-width:120px;" alt="ImgReferencial">
                    </div>
                    <div class="col-md-6 mt-3 ml-4">
                        <h2>{{item.Title}}</h2>
                        <p>{{item.Description}}</p>
                    </div>
                    <div class="col-md-1 mt-3 ml-4">
                    </div>
                    <div class="col-md-2 justify-content-center mt-auto mb-auto">
                        <a class="btn btn-primary" :href="'/evento/'+ item.ID" id="INFO">Más información</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <container-ins />
        </section>
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
    this.$http.get('http://127.0.0.1:5000/event/get_events')
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
