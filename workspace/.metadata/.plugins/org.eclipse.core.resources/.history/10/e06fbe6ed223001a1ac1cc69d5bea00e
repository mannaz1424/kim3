<template>
  <div id="container">
      <div class="page-header">
         <h1 class="text-center">연락처 관리 애플리케이션</h1>
         <p>(Dynamic Component + EventBus + Axios) </p>
      </div>
      <component :is="currentView" :contact="contact"></component>
      <contactList :contactlist="contactlist"></contactList>
      <paginate ref="pagebuttons"
        :page-count="totalpage"
        :page-range="7"
        :margin-pages="3"
        :click-handler="pageChanged"
        :prev-text="'이전'"
        :next-text="'다음'"
        :container-class="'pagination'"
        :page-class="'page-item'">
      </paginate>
  </div>
</template>

<script>
import Vue from 'vue';
// 기능별로 컴포넌 분리..
// 1. 리스트
// 2. 추가 처리 
// 3. 수정 처리
// 4. 이미지 변경/추가
import ContactList from './components/ContactList';
import AddContact from './components/AddContact';
import UpdateContact from './components/UpdateContact';
import UpdatePhoto from './components/UpdatePhoto';

// #기타 기능 처리 컴포넌트
// 1. 공통 설정값
// 2. eventBus 처리 
// 3. paging 처리..
import CONF from './Config.js';
import eventBus from './EventBus.js';
import Paginate from 'vuejs-paginate';

export default {    
    name: 'app',
    components : { ContactList, AddContact, UpdateContact, UpdatePhoto, Paginate },
    data: function() {
        return {
        	// 페이지에 따른 화면 전환을 위하여 
            currentView : null, 
            //mode : 'add',
            // 상세 데이터 처리를 위한  contact 모델 데이터 설정.
            contact : { no:0, name:'', tel:'', address:'', photo:'' },
            // list 처리되는 데이터 contacts로 설정이 되고,
            // 그 외에는 paging처리를 위한 속성값..
            contactlist : {
                pageno:1, pagesize: CONF.PAGESIZE, totalcount:0, contacts:[]
            }
        }
    },
    computed : {
        totalpage : function() {
        	// 페이지 수는   전체 데이터/한번에 보여줄페이건수 내림이나 올림으로 나머지 부분에
        	//  대한 처리..
            return Math.floor((this.contactlist.totalcount - 1) / this.contactlist.pagesize) + 1;
        }
    },
    mounted : function() {
        this.fetchContacts();
        eventBus.$on("cancel", () => {
            this.currentView = null;
        });
        eventBus.$on("addSubmit", (contact) => {
        	// 등록 하는 순간, 팝업창을 사라지게 하고.
            this.currentView = null;
            // 메서드 addContact로 등록데이터 전달..
            this.addContact(contact);
        });
        eventBus.$on("updateSubmit", (contact) => {
            this.currentView = null;
            this.updateContact(contact);
        });
        eventBus.$on("addContactForm", () => {
            this.currentView = 'addContact';
        });
        eventBus.$on("editContactForm", (no) => {
            this.fetchContactOne(no)
            this.currentView = 'updateContact';
        });
        eventBus.$on("deleteContact", (no) => {
            this.deleteContact(no);
        });
        eventBus.$on("editPhoto", (no) => {
            this.fetchContactOne(no)
            this.currentView = 'updatePhoto';
        });
        eventBus.$on("updatePhoto", (no, file) => {
            if (typeof file !=='undefined') {
                this.updatePhoto(no, file);
            }
            this.currentView = null;
        });      
    },
    methods : {
        pageChanged : function(page) {
            this.contactlist.pageno = page;
            this.fetchContacts();
        },
        fetchContacts : function() {
        	// axios로 비동기 통신을 통한 ajax데이터 로딩.
        	// CONF.FETCH : 상수로 접속할 서버 주소
        	// params:{요청값1:데이터, 요청값2:데이터}
            this.$axios.get(CONF.FETCH, {
                params : { 
                
                    pageno:this.contactlist.pageno, 
                    pagesize:this.contactlist.pagesize 
                } 
            })
            .then((response) => {
            	// response.data : axios를 통해서 가져오는 json 데이터
            	console.log("#반응값#");
            	console.log(response);
            	console.log("#json 데이터#");
            	console.log(response.data);
                this.contactlist = response.data;
            })
            .catch((ex)=> {
                console.log('fetchContacts failed', ex);
                this.contactlist.contacts = [];
            })
        },
        addContact : function(contact) {
        	// 등록하는 주소에 post방식으로  contack데이터 요청값으로 전달 처리.
            this.$axios.post(CONF.ADD,  contact)
            .then((response) => {
            	// 전송 후에는 다시 첫 페이지로 와서, 전체 데이터를 list 처리한다.
                this.contactlist.pageno = 1;
                this.fetchContacts();
            })
            .catch((ex)=> {
                console.log('addContact failed : ', ex);
            })
        },
        updateContact : function(contact) {
            this.$axios.put(CONF.UPDATE.replace("${no}", contact.no), contact)
            .then((response) => {
                this.fetchContacts();
            })
            .catch((ex) => {
                console.log('updateContact failed : ', ex);
            })
        },
        fetchContactOne : function(no) {
        	// key값을 ajax로 요청값으로 넘겨서 데이터 하나를 가져오는 처리..
            this.$axios.get(CONF.FETCH_ONE.replace("${no}", no))
            .then((response) => {
                this.contact = response.data;
            })
            .catch((ex)=> {
                console.log('fetchContactOne failed', ex);
            })
        },
        deleteContact : function(no) {
            this.$axios.delete(CONF.DELETE.replace("${no}", no))
            .then((response) => {
                this.fetchContacts();
            })
            .catch((ex) => {
                console.log('delete failed', ex);
            })
        },
        updatePhoto : function(no, file) {
        	/*
        	# ajax형식으로 파일을 서버에 전송시.
        	1. new FormData()를 이용 하여,
        		append("속성", 파일객체)
        	2. 요청값 처리시, FormData()의  변수값으로 전송 처리..
        	3. 서버에 stream으로 파일 자체를 전송처리..	
        	*/
            var data = new FormData();
            data.append('photo', file);

            this.$axios.post(CONF.UPDATE_PHOTO.replace("${no}", no),
                data)
            .then((response) => {
                this.fetchContacts();
            })
            .catch((ex) => {
                console.log('updatePhoto failed', ex);
            });
        }
    },
    watch : {
        ['contactlist.pageno'] : function() {
            this.$refs.pagebuttons.selected = this.contactlist.pageno-1;
        }
    },

}
</script>

<style scoped>
@import url("https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.css");

#container {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
