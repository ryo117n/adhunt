<!-- component: Index -->

<template>
  <div>
    <!-- 新規作成部分 -->
    <!-- <div class="row">
      <div class="col s10 m11">
        <input class="form-control" placeholder="Add your task!!">
      </div>
      <div class="col s2 m1">
        <div class="btn-floating waves-effect waves-light red">
          <i class="material-icons">add</i>
        </div>
      </div>
    </div> -->

    <!-- 投稿一覧 -->
    <post-list></post-list>

    <!-- 完了済みタスク一覧 -->
    <!-- <div id="finished-tasks" class="display_none">
      <ul class="collection">
        <li v-for="task in tasks" v-if="task.is_done"v-bind:id="'row_task_' + task.id" class="collection-item">
          <input type="checkbox" v-bind:id="'task_' + task.id" checked="checked" />
          <label v-bind:for="'task_' + task.id"  class="line-through">{{ task.name }}</label>
        </li>
      </ul>
    </div> -->
  </div>
</template>

<script>
  import axios from 'axios';
  import PostList from '../components/post-list.vue'

  export default {
    components: {
      'post-list': PostList,
    },
  }
</script>
