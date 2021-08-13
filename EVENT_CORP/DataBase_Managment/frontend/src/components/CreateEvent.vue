<template>
<section id="CreateEvent">
        <div class="container">
            <div class="row">
                <div class="col-md-7 col align-self-center">
                  <h1>Crear Evento</h1>
                  <p>Conoces algún evento que no esté en nuestro calendario? Créalo :D</p>
                  <div class="row">
                    <div class="col-md-6">
                      <h2>Título:</h2>
                      <div class="form-group">
                        <input type=text class="form-control" id="Title" placeholder="Título">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <h2>Descripción:</h2>
                      <div class="form-group">
                        <input type=text class="form-control" id="Description" placeholder="Descripción">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <h2>Fecha de inicio:</h2>
                      <div class="form-group">
                        <input type="datetime-local" class="form-control" id="DateStarts">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <h2>Fecha de fin:</h2>
                      <div class="form-group">
                        <input type="datetime-local" class="form-control" id="DateEnds">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <h2>Organizador:</h2>
                      <div class="form-group">
                        <input type=text class="form-control" id="Organizer" placeholder="Organizador">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <h2>Categoria:</h2>
                      <div class="form-group">
                        <input type=text class="form-control" id="Category" placeholder="Categoria">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <br><a href="#" class="btn btn-primary">Crear</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 mt-auto mb-auto">
                  <div class="content-center">
                        <img src="../assets/inscribirse.png" style="min-width: 120px; max-width: 2000px;" alt="Imagen Referencial">
                  </div>
                </div>
            </div>
        </div>
  </section>
</template>

<script>
export default {
  name: "CreateEvent"
}
</script>

<style scoped>

</style>
