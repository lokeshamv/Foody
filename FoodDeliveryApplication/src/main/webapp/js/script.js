function searchRestaurant(){

let input=document.getElementById("search").value.toLowerCase();

let cards=document.getElementsByClassName("card");

for(let i=0;i<cards.length;i++){

let title=cards[i].getElementsByClassName("name")[0];

if(title.innerHTML.toLowerCase().indexOf(input)>-1){

cards[i].style.display="block";

}
else{

cards[i].style.display="none";

}

}

}