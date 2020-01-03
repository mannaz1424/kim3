<template>
  <ul>
  <!-- 
  subs이라는 상위 컴포넌트에서 넘겨온 모델데이터를
  반복적으로 수행 처리.. 
   컴포넌트에서 자신의 컴포넌트 호출:재귀적 컴포넌트 호출
  -->
    <li v-for="s in subs" v-bind:class="s.type">
        {{s.name}}
        <tree :subs="s.subs"></tree>
    </li>    
  </ul>
</template>

<script>
export default {
    name : 'tree',
    props : [ 'subs' ]
}
</script>