function calcul_moyenne(){
    var n1=prompt("Donner la première note: ");
    var n2=prompt("Donner la deuxième note: ");
    var n3=prompt("Donner la troisième note: ");

    var somme = Number(n1)+Number(n2)+Number(n3);

    document.write ("voici la somme: "+somme+ "<br>");
    var moyenne= somme/3;

    document.write("voici la moyenne: "+moyenne+"<br>");
    if(moyenne<10)
    document.write("vous etes redoublant(e)");
    else
    document.write("Bravo ! vous etes Admis");
    
}


function test_age(){
    var age=prompt("veuillez me donnez votre Age");
    if(age<18)
    document.write("vous etes mineur");
    document.bgColor="red";
    else
    document.write("Bienvenue! vous etes majeur");
    document.bgColor="green";
}

fonction simple_affichage(){



}
fonction test_couleur(){
    var c=prompt(veuillez saisir une couleur pour la Discoparty !);
    if(c=="rouge"|| c=="BLEU"|| c=="Rouge"|| c=="r"){
        document.body.style.backround="lightred"
   else if(c=="bleu"|| c=="BLEU"|| c=="Bleu"|| c=="b"){
        document.body.style.backround="lightred"
    }
    else if(c=="jaune"|| c=="JAUNE"|| c=="Jaune"|| c=="j"){
        document.body.style.backround="yellow"
    }
    else if(c=="vert"|| c=="VERT"|| c=="Vert"|| c=="v"){
        document.body.style.backround="green"
    }

  }