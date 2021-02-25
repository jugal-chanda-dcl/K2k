function setSession(key,txt) {
  sessionStorage.setItem(key,txt);
}
function showtoastr(type,key) {
  if(sessionStorage.getItem(key)){
    if(type=='success'){
      toastr.success(sessionStorage.getItem(key));
      sessionStorage.removeItem(key);
    }
  }
}


export *;
