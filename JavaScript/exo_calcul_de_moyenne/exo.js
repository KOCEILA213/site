function moyenne(){
    var notel = document.getElementById("n1").value;
    var note2 = document.getElementById("n2").value;
    var note3 = document.getElementById("n3").value;
    var coeff1 = document.getElementById("c1").value;
    var coeff2 = document.getElementById("c2").value;
    var coeff3 = document.getElementById("c3").value;
    var moyenne =(Number(note1)*Number(coeff1)+Number(note2)*Number(coeff2)+Number(note3)*Number(coeff3))/( Number(coeff1)+ Number(coeff2)+Number(coeff3))
    moy1.value=moyenne
    
    if (moyenne<10)
         ment1.value="Redoublant";
    else if (moyenne<14)
        mention1.value="admis";
    else if (moyenne<16)
        ment1.value="admis, Mention: Bien";
    else
        ment1.value="Admis, Mention: Très bien";
}