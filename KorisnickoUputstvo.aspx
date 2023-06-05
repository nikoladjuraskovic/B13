<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KorisnickoUputstvo.aspx.cs" Inherits="B13.KorisnickoUputstvo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
            <div class="hcol1">
                Zadatak 6
            </div>
            <div class="hcol2">
                Telefonski imenik           
            </div>           
        </div>
        <div class="main">
            <div class="container">                
                <div class="uputstvo">
                    
                    <h3>Uputstvo</h3>
                    
<!--Ovu stranicu koristiti u serverskim zadacima gde se trazi stranica sa uputstvom.
    Za klijentske zadatke ubaciti u html stranicu div sa klasom uputstvo kao i ovde,
    isto u div klase container.-->
                    Veb aplikacije agencije za nekretnine za pretragu informacija o korisnicima. Veb aplikacija
                    ima 3 stranice. Na stranici Imenik
                    korisnik unosom podataka u tekstualna polja, izborom iz padajuće liste i klikom na dugme traži
                    može pronaći podatke o korisnicima prema zadatim kriterijumima. Podaci se ispisuju u tabeli. 
                    Na stranici važni telefoni se nalazi spisak važnih telefona. Na stranici korisničko uputstvo se nalazi uputstvo
                    aplikacije.
                    

                   
                </div>  
                
                
            </div>
        </div>
        <div class="footer">
            <div class="fcol1">
                Elektrotehnička škola "Zemun" Beograd
            </div>
            <div class="fcol2">              
                <a class="a" href="/Imenik.aspx">Početna</a>
                <a class="a" href="/VazniTelefoni.aspx">Važni telefoni</a>
                <a class="a" href="">O autoru</a>
            </div>           
        </div>
        </div>
    </form>
</body>
</html>
