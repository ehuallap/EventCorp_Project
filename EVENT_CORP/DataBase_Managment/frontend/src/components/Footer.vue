<template>
  <section id="footer">
    <div class="container">
      <div class="content-center">
        <hr>
        <div class="row">
          <div class="col-md-5">
            <img src="../assets/LogoPlanoWithout.png" class="logo-brand" alt="Logo"><br>
            <small>2021 © EventCorp </small><br>
            <small>All rights reserved </small>
          </div>
          <div class="col-md-5 col align-self-center">
            <ul class="list-inline">
              <li class="list-inline-item"><a class="list-link" href="#">Inicio</a></li>
              <li class="list-inline-item"><a class="list-link" href="#">Calendario</a></li>
              <li class="list-inline-item"><a class="list-link" href="#">Sobre Nosotros</a></li>
              <li class="list-inline-item"><a class="list-link" href="#">Contáctanos</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "Footer"
}
</script>

<style scoped>
body{ font-family: 'Titillium Web', sans-serif; background-color: rgb(230, 230, 230); }
h1{ font-family: 'Poppins', sans-serif; font-size: 50px; font-weight: 595; line-height: 60px;}
h2{ font-family: 'Poppins', sans-serif; font-size: 25px; font-weight: 595; line-height: 60px;}
h5{font-family: 'Poppins', sans-serif;}
p{font-size: 16px; font-weight: 400; }
hr{ size: 2px;color: black;}
.logo-brand{min-width: 180px; max-width: 190px;}

.container{
    padding: 20px;
}

.content-center{text-align: center;max-width:  1000px;margin: 20px auto 20px auto; }

.list-link{font-family: 'Poppins', sans-serif;color: black;text-decoration: none;}
.list-link:hover{color: black;}
</style>
