function calcul_moyenne(){
    var n1=prompt("Donner la première note : ");
    var n2=prompt("Donner la deuxième note : ");
    var n3=prompt("Donner la troisième note : ");
   
    var somme = Number(n1)+Number(n2)+Number(n3);

    document.write ("Voici la somme : "+somme+ "<br>");
    var moyenne= somme/3;

    document.write("Voici la moyenne : "+moyenne+" <br>");

    if (moyenne<10)
    document.write("Je regrette, vous êtes redoublant(e) :'(");
    else
    document.write("BRAVO ! Vous êtes admis en année supérieure ! :)");

}











function test_age(){
    var age=prompt("Veuillez me donner votre âge : ");
    if (age<18){
        document.write("Vous êtes mineur, vous ne pouvez pas rentrer dans la boîte du fun de M.Chergui. :(");
        document.bgColor="red";
    }
    else{
        document.write("Vous êtes majeur, bienvenu dans la boîte du fun de M.Chergui ! :)");
        document.bgColor="green";
    }
   

}

function simple_affichage(){

    var name=prompt("Veuillez donnez votre Prénom : ");
    var familyname=prompt("Veuillez saisir votre nom : ");
   
    document.write('<div style="margin:auto; width:300px; border:2px solid blue;">');
    document.write("bonjour   " + name + "  " + familyname);
    document.write('</div>');


}

function test_couleur(){

    var c=prompt("Veuillez saisir une couleur pour la DiscoParty !");
    if(c == "rouge"|| c=="ROUGE"||c=="Rouge"||c=="r"){
        document.body.style.background = "red"
    }
    else if (c == "bleu"|| c=="BLEU"||c=="Bleu"||c=="b"){
        document.body.style.background = "lightblue"
    }
    else if (c == "jaune"|| c=="JAUNE"||c=="Jaune"||c=="j"){
        document.body.style.background = "lightyellow"
    }
    else if (c == "Vert"|| c=="VERT"||c=="vert"||c=="v"){
        document.body.style.background = "lightgreen"
    }
    else if (c == "rose"|| c=="Rose"||c=="ROSE"||c=="r"){
        document.body.style.background = "lightpink"
    }
    else{
        document.write("Couleur non comprise")
    }

}