<template>
            <div class="content-center">
                <h1>Sobre Nosotros</h1>
                <h5>Somos un grupo de estudiantes de la Universidad Nacional <br> de San Agustín de Arequipa.</h5>
                <div class="content-center">
                  <img src="../assets/uni.png" class="Icon3D" alt="Logo">
                </div>

                <h1>Nuestra Misión</h1>
                <h5>Alguna vez no te enteraste de alguna actividad o evento cerca de ti?
                <br>O alguna vez se te paso uno por olvido?
                <br>O tal vez nunca supiste como enterarte de los eventos cerca de ti?
                <br>No te preocupes, estamos aqui para ayudarte :D</h5>
                <div class="content-center">
                  <img src="../assets/team.png" class="Icon3D" alt="Logo">
                </div>
                <br><hr><br>
                <div class="row">
                    <div class="col-md-4 col align-self-center">
                        <h1>Olvídate de seguir faltando a eventos de tu interés.</h1>
                    </div>
                    <div class="col-md-8">
                        <div class="content-center">
                            <div class="content-center">
                                <img src="../assets/party.png" class="Icon3D" alt="Logo">
                            </div>
                        </div>
                    </div>
                </div>
                <h1>Equipo</h1>
                <p>Conoce a nuestro equipo y su increíble potencial.</p>

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
                        <div class="col-md-6  col align-self-center">
                            <div class="content-center">
                                <img src="../assets/Logo.png" class="Icon3D" alt="Logo">
                            </div>
                        </div>
                    </div>
                </div>

            </div>

</template>

<script>
export default {
  name:"Nosotros"
}
</script>

<style scoped>
body{ font-family: 'Titillium Web', sans-serif; background-color: rgb(230, 230, 230); }
h1{ font-family: 'Poppins', sans-serif; font-size: 50px; font-weight: 595; line-height: 60px;}
h2{ font-family: 'Poppins', sans-serif; font-size: 25px; font-weight: 595; line-height: 60px;}
h5{font-family: 'Poppins', sans-serif;}
p{font-size: 16px; font-weight: 400; }
hr{ size: 2px;color: black;}

.container{
    padding: 20px;
}

.content-center{text-align: center;max-width:  1000px;margin: 20px auto 20px auto; }

.content-left{
    max-width:  800px;
    margin: 30px 30px 10px 30px;
    text-align: left;
}

.container-white{background: white;border-radius: 25px;}

.list{padding: 30px 20px 20px;}
.list-item {padding: 30px 20px 20px;list-style-type: none;}

.Icon3D{
    min-width: 120px; max-width: 310px;
}
</style>
