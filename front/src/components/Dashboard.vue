<template>
  <div>
    <h1>{{ msg }}</h1>
    <div v-for="post in posts">
      <h4>{{ post.title }}</h4>
      <p>{{ post.content }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Dashboard',
  created () {
    this.$http.get('/api/posts')
        .then(request => {
          this.posts = request.data
        })
        .catch(() => alert('posts request error'))
  },
  data () {
    return {
      posts: [],
      msg: 'Kubernetes TechTalk Posts'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
