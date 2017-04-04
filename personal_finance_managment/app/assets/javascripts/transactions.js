
var statusChanger = (function(){
   var statusColor = function() {
     $(".status:contains('Bills')").css("color", "red");
     $(".status:contains('Transport')").css("color", "yellow");
     $(".status:contains('Groceries')").css("color", "green");
     $(".status:contains('Shopping')").css("color", "green");
     $(".status:contains('Food and drink')").css("color", "green");
 };

 return {
   color: statusColor
 };
}());

statusChanger.color();
