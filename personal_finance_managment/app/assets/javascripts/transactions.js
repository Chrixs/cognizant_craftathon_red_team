
var statusChanger = (function(){
   var statusColor = function() {
     $(".category:contains('Bills')").attr("bg-color", "red");
     $(".category:contains('Transport')").attr("bg-color", "yellow");
     $(".category:contains('Groceries')").attr("bg-color", "green");
     $(".category:contains('Shopping')").attr("bg-color", "green");
     $(".category:contains('Food and drink')").attr("bg-color", "green");
 };

 return {
   color: statusColor
 };
}());

statusChanger.color();
