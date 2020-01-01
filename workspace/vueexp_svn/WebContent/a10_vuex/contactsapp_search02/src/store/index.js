import Vue from 'vue';
import Vuex from 'vuex';
import Constant from '../constant';
import module1 from './module1'
// Vue 객체의 use에 Vuex 할당으로 
// 사용처리..
Vue.use(Vuex);

const store = new Vuex.Store({
	// 상태로 keywordlist : 검색한 keywordlist를 저장
    state: {
        keywordlist : []
    },
    // mutations은 추가 변경시 처리할 내용..
    mutations: {
        [Constant.ADD_KEYWORD] : (state, payload) => {
            state.keywordlist.splice(0, 0, payload.name);
        }
    },
    // actions을 통한 현재 상수 데이터 확정 처리..
    actions : {
        [Constant.ADD_KEYWORD] : (store, payload)=> {
            store.commit(Constant.ADD_KEYWORD, payload);
        }        
    },
    modules : { m1 : module1 }
})

export default store;