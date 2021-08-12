<template>
<section id="Evento">
  <div class="container">
    <h1>Seminario Java</h1>
    <div class="container-white">
      <div class="row">
        <div class="col-md-5 col align-self-center">
          <div class="content-center">
            <img src="../assets/ComoFunciona.png" style = "min-width: 10px; max-width:350px;" alt="Logo">
          </div>
        </div>
        <div class="col-md-5">
          <div class="container">
            <h2>Fecha y hora: </h2>
            <h2>Modalidad: </h2>
            <h2>Acceso: </h2>
            <h2>Organiza: </h2>
            <button class="mybtn" type="button">
              <ion-icon name="calendar-outline"></ion-icon>
            </button>
            <h5>Agregar a mi calendario</h5>
          </div>
        </div>
      </div>
    </div>
    <button class="mybtn" type="button">
      <ion-icon name="arrow-back-circle-outline"></ion-icon>
    </button>
    <h2>Regresar al Calendario</h2>
  </div>
</section>
</template>

<script>
export default {
  name: "Eventos"
}
</script>

<style scoped>
.container{
    padding: 20px;
}

.content-center{text-align: center;max-width:  1000px;margin: 20px auto 20px auto; }

.container-white{background: white;border-radius: 25px;}
.mybtn{background-color: transparent; font-size: 45px; outline: none; border:none;}
.mybtn:focus{ outline: none;}

</style>
