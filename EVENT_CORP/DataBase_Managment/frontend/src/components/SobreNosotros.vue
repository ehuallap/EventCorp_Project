<template>
  <div class="content-center">
    <h1>Sobre Nosotros</h1>
    <h5>Somos un grupo de estudiantes de la Universidad Nacional <br> de San Agustín de Arequipa.</h5>
    <div class="content-center">
      <img src="../assets/uni.png" style="min-width: 120px; max-width: 1500px;" alt="Logo">
    </div>
    <h1>Nuestra Misión</h1>
    <h5>Alguna vez no te enteraste de alguna actividad o evento cerca de ti?
      <br>O alguna vez se te paso uno por olvido?
      <br>O tal vez nunca supiste como enterarte de los eventos cerca de ti?
      <br>No te preocupes, estamos aqui para ayudarte :D</h5>
    <div class="content-center">
      <img src="../assets/index.png" style="min-width: 120px; max-width: 3500px;" alt="Logo">
    </div>
    <br><hr><br>
    <div class="row">
      <div class="col-md-4 col align-self-center">
        <h1>Olvídate de seguir faltando a eventos de tu interés.</h1>
      </div>
      <div class="col-md-8">
        <div class="content-center">
          <div class="content-center">
            <img src="../assets/party.png" style="min-width: 120px; max-width: 450px;" alt="Logo">
          </div>
        </div>
      </div>
    </div>
  <container-ins/>
  </div>
</template>

<script>
import containerIns from "./container-inscribete";

export default {
  name:"Nosotros",
  components: {
    containerIns
  }
}
</script>

<style scoped>
.content-center{text-align: center;max-width:  1000px;margin: 20px auto 20px auto; }

.Icon3D{
    min-width: 120px; max-width: 310px;
}
</style>
