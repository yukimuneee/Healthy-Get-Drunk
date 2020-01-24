$(function(){
  $('#money').on('input',function(){
    var value = $(this).val();
    if(value > 9999999){
      $('#fee').val('-');
    } else if(300 > value){
      $('#fee').val('-');
    } else{
      var fee = value / 10;
      $('#fee').val(fee);
    }
  });

  $('#money').on('input',function(){
    var value = $(this).val();
    if(value > 9999999){
      $('#profit').val('-');
    } else if(300 > value){
      $('#profit').val('-');
    } else{
      var fee = value / 10;
      var profit = value - fee;
      $('#profit').val(profit);
    }
  });

  $('#weight').on('input',function(){
    var value = $(this).val();
    if(value > 9999999){
      $('#fee').val('-');
    } else if(300 > value){
      $('#fee').val('-');
    } else{
      var fee = value / 10;
      $('#fee').val(fee);
    }
  });

  $('#weight').on('input',function(){
    var value = $(this).val();
    if(value > 9999999){
      $('#profit').val('-');
    } else if(300 > value){
      $('#profit').val('-');
    } else{
      var fee = value / 10;
      var profit = value - fee;
      $('#profit').val(profit);
    }
  });
});