<template>
  <img alt="Vue logo" src="./assets/logo.png">
  <div>
    <h2>쀼 설치 완료</h2>
    <P>두근두근 나도 이제 쀼 개발자?</P>
    {{user}} <br>
    {{vue_array}}
    <div v-for="(a,i) in vue_array" :key="i">
      {{ a }}
    </div>
  </div>
  
</template>

<script>


export default {
  name: 'App',
  data(){
    return {
      user: "Vue",
      vue_array: ["vue", "react", "앵귤러?"],
    }
  },
  components: {
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
