<template>
    <div>
    <p>
        이름 : <input type="text" v-model.trim="name" placeholder="두글자 이상 입력후 엔터!"
                @keyup.enter="keyupEvent" /><br />
    </p>
    <div>
        <div>  최근 검색이름 리스트 : </div>
        <div class="box">
        	<!-- 
        	computed로 mapState([
        'keywordlist'로 지정된 데이터 가져와서 현재 keyword를 list 처리 한다.
        	-->
            <div class="item" v-for="keyword in keywordlist">
            	{{keyword}}</div>
        </div>
    </div>
    </div>
</template>
<script type="text/javascript">
import Constant from '../constant';
import { mapState } from 'vuex';

export default {
    name : 'search',
    data : function() {
        return { name: ''};
    },
    computed : mapState([
        'keywordlist'
    ]),
    methods : { 
        keyupEvent : function(e) {
        	// 데이터를 입력하고, enter키를 입력시, 데이터를 가져와서..
            var val = e.target.value;
            if (val.length >= 2) {
            	//  저장소에  key 로 상수값 Constant.SEARCH_CONTACT,
            	//          value 로 데이터가 있는 객체를 dispatch 
                this.$store.dispatch(Constant.SEARCH_CONTACT, 
                	{ name: val });
                this.name = "";
            } else {
                this.$store.dispatch(Constant.SEARCH_CONTACT, { name: '' })
            }
        }
    }
}
</script>
<style scoped>
div.box { width:200px; height:100px; overflow:auto;
        border:solid 1px #BBBBBB; margin:5px 0px 5px 0px; }
div.item { padding:3px; }
</style>

