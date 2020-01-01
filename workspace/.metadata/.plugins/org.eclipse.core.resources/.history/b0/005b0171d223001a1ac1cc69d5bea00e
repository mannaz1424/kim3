<template>
<div>
  <div class="header">
    <h1 class="headerText">(주) OpenSG</h1>
    <nav>
      <ul>
        <li>
          <a href="#" @click="changeMenu('home')">Home</a>
        </li>
        <li>
          <a href="#" @click="changeMenu('about')">About</a>
        </li>
        <li>
          <a href="#" @click="changeMenu('contact')">Contact</a>
        </li>
         <li>
          <a href="#" @click="changeMenu('admin')">관리자</a>
        </li>       
      </ul>
    </nav>
  </div>

  <div class="container">
    <keep-alive>
    	<!-- 
    	is="컴포넌트명" : 하위 속성의 컴포넌트가 대체처리..
    	1. currentView에 초기 home이 들어 가고 해당 home의 컴포넌트 내용을 출력..
    	
    	-->
      <component v-bind:is="currentView"></component>
    </keep-alive>
  </div>
</div>
</template>
<script>
import Home from './components/Home.vue';
import About from './components/About.vue';
import Contact from './components/Contact.vue';
import Admin from './components/Admin.vue';

export default {
  components : { Home, About, Contact, Admin },
  data() {
  // 기본 모델 데이터currentView에 매핑된 문자열은 'home'
    return { currentView : 'home' }
  },
  methods : {
    changeMenu(view) {
      this.currentView = view;
    }
  }
}
</script>
<!-- style default로 전체 모든 컴포넌트에 적용이 되지만,
현재 컴포넌트에 지역적으로 적용이 필요할 때, scoped을 활용한다.
 -->
<style scoped>
.header { background-color:aqua; padding: 10px 0px 0px 0px; }
.headerText { padding: 0px 20px 0px 20px; } 
ul { list-style-type: none; margin: 0; padding: 0;
    overflow: hidden; background-color: purple;  }
li { float: left; }
li a { display: block; color: yellow; text-align: center;
    padding: 14px 16px; text-decoration: none;  }
li a:hover { background-color: aqua; color:black; }
</style>
