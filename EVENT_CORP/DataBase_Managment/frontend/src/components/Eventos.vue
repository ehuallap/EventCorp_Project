
<script>
export default {
  name: "Eventos"
}
</script>

<template id="Evento">
        <div class="container">
            <h1><b>Seminario Java

            </b></h1>
            <div class="container-white">
                <div class="row">
                    <div class="col-md-5 col align-self-center">
                        <div class="content-center">
                            <img src="../assets/Logo.png" width="450" height="450" class="Icon3D" alt="Logo">
                        </div>
                    </div> 
                    
                    <div class="col-md-5">
                        <div class="container">
                            <h2><b>Fecha y hora: </b></h2>
                            <h3>21/12/2021 a las 15:40</h3>
                            <h2><b>Modalidad: </b></h2>
                            <h3>Virtual</h3>
                            <h2><b>Acceso: </b></h2>
                            <h3>Publico</h3>
                            <h2><b>Organiza: </b></h2>
                            <h3>Jorge Ruiz</h3>
                            
                            <a class="btn btn-primary" href="/" role="button">Agregar a mi Calendario 
                            <ion-icon name="calendar-outline"></ion-icon>
                            </a>
                        </div>
                    </div>     
                </div>
            </div>
            <h1>                   </h1>
            <a class="btn btn-primary" href="/" role="button">Regresar al Calendario 
            <ion-icon name="arrow-back-circle-outline"></ion-icon>
            </a>           
        </div>              
</template>
