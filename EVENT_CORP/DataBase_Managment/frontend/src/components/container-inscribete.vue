<template>
    <div class="container">
      <div class="container-white">
        <div class="row">
            <div class="col-md-5">
                <div class="container">
                    <div class="content-left">
                        <h1>Inscríbete y empieza a disfrutar</h1><br><br><br><br><br>
                        <a class="btn btn-primary" href="/inscribirse" role="button">Inscribirse</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col align-self-center">
                <div class="content-center">
                    <img src="../assets/img02.png" style = "min-width: 10px; max-width:800px;" alt="Logo">
                </div>
            </div>
        </div>
    </div>
    </div>
</template>

<script>
export default {
  name: "containerIns"
}
</script>

<style scoped>
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

</style>
