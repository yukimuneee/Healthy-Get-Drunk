$(function(){
  $('#money').on('input',function(){
    var value = $(this).val() | 0;
    var total = gon.total_m;
    if(value < 0){
      $('#total').val('-----');
    } else if(value >= 0){
      var total = parseInt(value) + parseInt(total)
      $('#total').val(total);
    }
  });
  $('#money').on('input',function(){
    var value = $(this).val() | 0;
    var total = gon.total_m;
    var number = gon.number_m;
    var n = 0;
    if(value < 0){
      $('#average1').val('-----');
    } else if(value >= 0){
      var total = parseInt(value) + parseInt(total)
      var number = parseInt(number) + 1
      var average1 = total / number;
      var average1 = Math.floor( average1 * Math.pow( 10, n ) ) / Math.pow( 10, n ) ;
      $('#average1').val(average1);
    }
  });
  $('#weight').on('input',function(){
    var value = $(this).val();
    var gap = gon.last_time_w;
    var n = 2;
    if(value < 0){
      $('#gap').val('-----');
    } else if(value >= 0){
      var gap = parseFloat(value) - parseFloat(gap)
      var gap = Math.floor( gap * Math.pow( 10, n ) ) / Math.pow( 10, n ) ;
      $('#gap').val(gap);
    }
  });
  $('#weight').on('input',function(){
    var value = $(this).val();
    var total = gon.total_w;
    var number = gon.number_w;
    var n = 2;
    if(value < 0){
      $('#gaverage2').val('-----');
    } else if(value >= 0){
      var total =　parseFloat(value) + parseFloat(total)
      var number = parseFloat(number) + 1
      var average2 = total / number;
      var average2 = Math.floor( average2 * Math.pow( 10, n ) ) / Math.pow( 10, n ) ;
      $('#average2').val(average2);
    }
  });
});

