<template>
  <div class="container">
  <!-- 
   1. props : [ 'headerText', 'footerText' ]
   으로 상위에서 하위로 전달(모델데이터) 처리..
   2. content부분은 slot으로 전체를 html과 함께 전달 처리..
  -->
    <div class="header">{{headerText}}</div>
    <div class="content">
        <slot></slot>
    </div>
    <div class="footer">{{footerText}}</div>
  </div>
</template>

<script>
export default {
    props : [ 'headerText', 'footerText' ]
}
</script>

<style scoped>
.container { width:300px; margin:10px; padding:2px;
    border:solid 1px gray; float:left; }
.header { padding:4px 20px 4px 20px; background-color: orange;
    color:aqua; text-align: center; }
.footer { padding:4px 20px 4px 20px; background-color: aqua; 
    text-align:left; }
.content { padding: 10px; height:auto; min-height: 40px; 
    text-align:left; }
</style>
