window.addEventListener('load', function(){
  for(_i = 0;_i < $("textarea[simditor]").length; _i++){
    var simditor_value = $($("textarea[simditor]")[_i]).attr("simditor");
    new Simditor({
      textarea: $("textarea[simditor]")[_i],
      upload: true,
      pasteImage: true,
      width: simditor_value
    });
  };
},false);