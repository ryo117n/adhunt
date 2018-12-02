<!-- component: postolist -->

<template>
  <div>
    <ul>
      <li v-for="post in posts" class="collection-item">
        <label>id : {{ post.id }}</label>
        <label>user_id : {{ post.user_id }}</label>
        <label>advertiser_id : {{ post.advertiser_id }}</label>
        <label>media_id : {{ post.media_id }}</label>
        <label>content : {{ post.content }}</label>
        <label>created_at : {{ post.created_at }}</label>
      </li>
    </ul>
  </div>
</template>

<script>
  import axios from 'axios';
  
  export default {
    data: function () {
      return {
        posts: [],
        newPost: ''
      }
    },
    mounted: function () {
      this.fetchPosts();
    },
    methods: {
      fetchPosts: function () {
        axios.get('/api/posts').then((response) => {
          for(var i = 0; i < response.data.posts.length; i++) {
            this.posts.push(response.data.posts[i]);
          }
        }, (error) => {
          console.log(error);
        });
      },
    }
  }
</script>

<style lang="css">
</style>
