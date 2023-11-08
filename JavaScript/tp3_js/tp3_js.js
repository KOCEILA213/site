function ajouterElement(){

var nouvelElement = document.getElementById("t1").value;

    if(nouvelElement.trim()!==""){
        var li=document.createElement("li");
        li.appendChild(document.createTextNode(nouvelElement));
        document.getElementById("liste").appendChild(li);
        document.getElementById("t1").value="";

}
    else {

        alert("Veuillez entrer un élément valide.");

    }



}