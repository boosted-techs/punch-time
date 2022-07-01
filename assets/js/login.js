var app = new Vue({
   el: '#login' ,
   data:{
      logDetails:{username:'', email:'', password:'', usertype:'' },
   },

   methods:{
    keymonitor: function(event){
        if(event.key== "Enter"){
            app.checklogin();
        }
    },
    checklogin: function(){
        var logform = app.toFormData(app.logDetails);
        axios.post('LoginController.php', logform).then(function(response){

        });
    },
    toFormData: function(obj){
        var form_data = new FormData();
        for (var key in obj){
            form_data.append(key, obj[key]);
        }
        return form_data;
    },

   }
});