var statusChanger = (function(){
   var statusColor = function() {
     $(".category:contains('Bills')").attr("bgcolor", "$pink");
     $(".category:contains('Transport')").attr("bgcolor", "yellow");
     $(".category:contains('Groceries')").attr("bgcolor", "green");
     $(".category:contains('Shopping')").attr("bgcolor", "green");
     $(".category:contains('Eat')").attr("bgcolor", "green");
 };

 return {
   color: statusColor
 };
}());

statusChanger.color();
