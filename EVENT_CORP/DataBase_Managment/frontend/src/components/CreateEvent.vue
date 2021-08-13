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
                        <input type=text class="form-control" id="Title" placeholder="Título" v-model="nuevoEvento.title">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <h2>Descripción:</h2>
                      <div class="form-group">
                        <input type=text class="form-control" id="Description" placeholder="Descripción" v-model="nuevoEvento.description">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <h2>Fecha de inicio:</h2>
                      <div class="form-group">
                        <input type="datetime-local" class="form-control" id="DateStarts" v-model="nuevoEvento.date_start">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <h2>Fecha de fin:</h2>
                      <div class="form-group">
                        <input type="datetime-local" class="form-control" id="DateEnds" v-model="nuevoEvento.date_end">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <h2>Organizador:</h2>
                      <div class="form-group">
                        <input type=text class="form-control" id="Organizer" placeholder="Organizador" v-model="nuevoEvento.organizerId">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <h2>Categoria:</h2>
                      <div class="form-group">
                        <input type=text class="form-control" id="Category" placeholder="Categoria" v-model="nuevoEvento.categoryId">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <br><a href="#" class="btn btn-primary" @click="crear">Crear</a>
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
  name: "CreateEvent",
  data() {
    return {
      nuevoEvento: {
        'title': '',
        'description': '',
        'date_start': '',
        'date_end': '',
        'subscribers': '0',
	      'category_name': '',
	      'organizer_name': ''
      },
      result: ''
    }
  },
  methods: {
    async crear() {
      // Opciones por defecto estan marcadas con un *
      this.result = await fetch('http://127.0.0.1:5000/event/create_event', {
        method: 'POST', // *GET, POST, PUT, DELETE, etc.
        mode: 'cors', // no-cors, *cors, same-origin
        cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
        credentials: 'same-origin', // include, *same-origin, omit
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Content-Type': 'application/json'
        },
        redirect: 'follow', // manual, *follow, error
        referrerPolicy: 'no-referrer', // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
        body: JSON.stringify({
          title: this.nuevoEvento['title'].toString(),
          description: this.nuevoEvento['description'].toString(),
          date_start: this.nuevoEvento['date_start'].toString(),
          date_end: this.nuevoEvento['date_end'].toString(),
          subscribers: this.nuevoEvento['subscribers'].toString(),
          categoryId: this.nuevoEvento['category_name'].toString(),
          organizerId: this.nuevoEvento['organizer_name'].toString()
        })
      })
      const array = await this.result.json()
      console.log(array)
      if ( array ) {
        await this.$router.push("/calendario")
      }
    }
  }
}
</script>

<style scoped>

</style>
