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
            <div class="container-white">
                <div class="row">
                    <div class="col-md-6">
                        <div class="container">
                            <div class="content-left">
                                <h1>Inscríbete y empieza a disfrutar</h1><br><br>
                                <a class="btn btn-primary" href="#" role="button">Inscribirse</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col align-self-center">
                        <div class="content-center">
                            <img src="../assets/Logo.png" class="Icon3D" alt="Logo">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  </div>
</template>

<script>
export default {
  name: "Calendario"
}
</script>

<style scoped>
  .container{
    padding: 50px;
  }
  .Icon3D{
      min-width: 120px; max-width: 310px;
  }
  .container-white{
    background: white;border-radius: 25px;
    margin-top: 20px;
  }
  .content-center {
    text-align: center;
  }
  .content-left {
    text-align: left;
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
