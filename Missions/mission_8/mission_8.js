
function fonction1(){
    let test = prompt("Bonjour; veuillez saisir une chaine de caractère : ");
    document.body.innerHTML=test; 
}



function fonction2(){
    let a = 42; 
    let b = 7569;
    let result = a+b;
    alert(result);
}

function fonction3(){
    let Note_de_Maths = 11;
    let Note_de_francais = 9;
    let Note_histoire_geo = 16;
    let moyenne = (Note_de_Maths+Note_de_francais+Note_histoire_geo);
    alert("Votre moyenne est de : "+moyenne);
}



function fonction4(){
    let Budget = prompt("Veuillez saisir le budget dont vous disposez : ");
    Budget = parseInt(Budget);   

    let Achats = prompt("Veuillez saisir le montant total de vos achats : ");
    Achats = parseInt(Achats);

    if(Achats<= Budget){
        alert("Vous avez le budget nécessaire pour tout acheter, il vous restera : "+(Budget-Achats)+"€");
    }
    else{
        alert("Vous n'avez pas le budget nécessaire. Il vous manque : "+(Achats-Budget)+"€"); 
    }
}



function fonction5(){
    let prixHT = prompt("Veuillez saisir le prix de votre article Hors Taxe : ");
    document.body.innerText = ("Le prix de votre article TTC est de : "+prixHT*1.2+"€");

}
 



function fonction6(){
    let prixHT = prompt("Veuillez saisir le prix de votre article Hors Taxe :  ");
    let TVA = prompt("Veuillez saisir le Taux de TVA : ");
    TVA = (TVA/100)+1; 
    document.body.innerText = ("Le prix de votre article TTC est de : "+(prixHT*TVA)+"€"); 
}

function fonction7(){
    let HT = prompt("Quel est le prix de votre article Hors Taxes ?");
    let Taux_Tva = prompt("Quel est le Taux de la TVA ? ");
    Taux_Tva = (Taux_Tva/100)+1; 
    let TTC=HT*Taux_Tva; 
    if(TTC>100){
        document.body.innerHTML = ('<h1 style="background-color:red; color:pink;">'+"Le prix de votre article TTC est de : "+prixTTC+"€"+'</h1>');
    }
    else{
        document.body.innerHTML = ('<h1 style="background-color:green; color:lightgreen;">'+"Le prix de votre article TTC est de : "+prixTTC+"€"+'</h1>');
    }
}
function fonction7(){
    let prixHT = prompt("Veuillez saisir le prix de votre article Hors Taxe :  ");
    let TVA = prompt("Veuillez saisir le Taux de TVA : ");
    TVA = (TVA/100)+1; 
    let prixTTC = prixHT*TVA;
    if(prixTTC > 100){
        document.body.innerHTML = ('<h1 style="background-color:red; color:pink;">'+"Le prix de votre article TTC est de : "+prixTTC+"€"+'</h1>');

    }
    else{
            document.body.innerHTML = ('<h1 style="background-color:green; color:lightgreen;">'+"Le prix de votre article TTC est de : "+prixTTC+"€"+'</h1>');
    }
}

function fonction8(){ 
    for (let i =10;i <= 1000;i+=10){ 
        console.log(i);
}
alert("Les résultats ont correctement étés affichés dans la console.");
    
} 

function fonction9(){
    let age = prompt("Veuillez saisir votre âge : ");
    if (age>=18 && age<125){
        alert("Vous êtes majeur.");
    }
    else if (age<18 && age>0){
        alert("Vous êtes mineur.");
    }
    else {
        alert("Veuillez rentrer un âge valide."); 
    }
}

function fonction10(){
    let CP = prompt("De quel département voulez vous avoir tous les Codes Postaux possibles ? (ex: 77)"); 
    CP = CP*1000; 
    if(CP>0){
       for(let i=0;i<1000;i++){
            console.log(CP);
            CP++; 
        } 
    }
    else{
        alert("Veuillez rentrer le numéro d'un département valide.");
    }  
}

function fonction11(){
    for(let i=5; i<=50; i+=5){
        alert(i);
    }
}
function fonction12(){
    var html='';
    for (var a = 1;a <= 5; a++){
        for(var b = 1;b <= a; b++){
            html=html+a;
        }
        html=html+'<br/>';
    }
    document.getElementById('affichage').contentWindow.document.open();
    document.getElementById('affichage').contentWindow.document.write("<h2>Résultat : </h2>"+html);
    document.getElementById('affichage').contentWindow.document.close();
}
function fonction13(){
    let html = ""; 
    let obj=0; 

    while(obj<=20){
        html = html +obj+ "<br />";
        obj+=2; 
    }
    document.body.innerHTML = html; 
}

function fonction14(){
    let tableau = "<table>";
    let lignes = 5; 
    let colonnes = 3; 

    for(let i = 1; i<=lignes; i++){
        tableau = tableau + "<tr>";
        for (let k =1;k<=colonnes;k++){
            tableau = tableau + "<td>Yolo</td>";
        }
        tableau = tableau + "</tr>"; 
    }
    tableau = tableau + "</table>";
    document.body.innerHTML = tableau;
}

function fonction15(){
    let lignes = prompt("Veuillez saisir le nombre de lignes ?"); 
    let colonnes = prompt("Veuillez saisir le nombre de colonnes ?");
    let tableau = "<table>";

    for(let i = 1; i<=lignes; i++){
        tableau = tableau + "<tr>";
        for (let k =1;k<=colonnes;k++){
            tableau = tableau + "<td>Yolo</td>";
        }
        tableau = tableau + "</tr>"; 
    }
    tableau = tableau + "</table>";
    document.body.innerHTML = tableau;

}

function fonction16(){
    let html = "<ul>";
    let nalea = 10;
    for(let i=0; i<nalea; i++){
        html = html + "<li>" + Math.floor(Math.random()*100) + "</li>";
    }
    html = html + "</ul>";
    document.body.innerHTML = html; 
}

function fonction17(){
    let html = "<ul>";
    let nalea = 10;
    for(let i=0; i<nalea; i++){
        let tmp = Math.floor(Math.random()*11); 
        if(tmp == 10){
            console.log("Le nombre 10 fait parti du tirage");
        }
        html = html + "<li>" + tmp + "</li>";
    }
    html = html + "</ul>";
    document.body.innerHTML = html; 
}

function fonction18(){
    let html = "<ul>";
    let nalea = 10; 
    let nalea10 = 0;
    for(let i=0; i<nalea; i++){
        let tmp = Math.floor(Math.random()*11); 
        if(tmp == 10){
            nalea10++; 
        }
        html = html + "<li>" + tmp + "</li>";

    }
    html = html + "</ul>";
    html = html + "<p> Il y a eu "+nalea10+" tirages de 10.</p>";
    document.body.innerHTML = html; 
}

function fonction19(){
    let r = Math.floor(Math.random() * 256);
    let g = Math.floor(Math.random() * 256);
    let b = Math.floor(Math.random() * 256);
    let color = "rgb("+r+" , "+g+" , "+b+" )";
    document.body.style.background = color 
}


