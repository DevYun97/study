<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>
  </div>
  <HeaderTest />
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'
import HeaderTest from '@/components/Header.vue'

export default {
  name: 'HomeView',
  components: {
    HelloWorld,
    HeaderTest
  }
}
</script>
