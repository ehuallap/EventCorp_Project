<template>
  <section id="Bienvenida">
    <div class="container">
      <div class="content-center">
        <div class="row">
          <div class="col-md-6 col align-self-center">
            <div class="content-left">
            <h1>No te pierdas ningun evento!</h1>
            <p>Consulta nuestro calendario con variados eventos, con información de acceso y más! Qué esperas?</p>
            <a class="btn btn-primary" href="#" role="button">Inscribirse</a>
            <button type="button" class="btn btn-outline-secondary" href="#">¿Cómo funciona?</button>
            </div>
          </div>
          <div class="col-md-6">
            <div class="content-center">
              <img src="../assets/largo.png" class="Icon3D" alt="Imagen Referencial">
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "index"
}
</script>

<style scoped>
  body{ font-family: 'Titillium Web', sans-serif; background-color: rgb(230, 230, 230); }

  h1{ font-family: 'Poppins', sans-serif; font-size: 50px; font-weight: 595; line-height: 60px;}
  h2{ font-family: 'Poppins', sans-serif; font-size: 25px; font-weight: 595; line-height: 60px;}
  h5{ font-family: 'Poppins', sans-serif; }
  p{ font-size: 16px; font-weight: 400; }
  hr{ size: 2px;color: black;}
  .container{
      padding-top: 20px;
  }
</style>
