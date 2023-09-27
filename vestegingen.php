<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vestegingen</title>
</head>
<body>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Annexbios</title>
    <link href="./css/mainstyle.css?t=<?php echo time() ?>" rel="stylesheet"  />
</head>

<!-- begin van de body -->
<body>
<nav class="navbar">
    <div class="kop">
        <img id="logo" src="./assets/logo/logo_hoofd.png" alt="logo">
        <div class="kop_tekst">
            <h3 class="kop1">VESTIGINGEN</h3>
            <h3 class="kop2">AANBEVOLEN FILMS</h3>
            <h3 class="kop3">CONTACT</h3>
        </div>
    </div>
    <div class="navbar_onderkant">
        <h2 class="navbar_koop"> KOOP JE TICKETS</h2>
        <div class="seach"><p class="tekst_seach">Kies je vestiging</p></div>
        <div class="bekijktickets"><h5 class="teks_bekijktickets">BEKIJK TICKETS</h5></div>
    </div>
</nav>
<div class="header">
    <h1>Kies een vesteging waar u de film wilt kijken</h1>
    <p class="header_tekst">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit possimus eos fugit provident, eius perspiciatis facere veritatis rem <br> nihil nulla ullam nemo iusto fugiat excepturi vel velit aspernatur cum recusandae!</p>
</div>
<div class="vestigingen">
    <?php $id = $_GET['id'];
    echo '<a class="vestiging" id="vestiging1" href="https://annexbiosmaarssen.gluwebsite.nl?id='. $id .'">
        <img class="foto_vestiging" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpIz3GryzUBx3wsZlI5bGqv2x5VW6xfuuhIPM75VmU4Q&s" alt="foto van de film">
        <h2 class="naam_vestiging">maarssen</h2>
        <p class="locatie_vestiging">Rijksstraatweg 42, 3223 KA</p>
        <div class="button_naarvestiging" style="background-color: #B97D46;"><span>BEZOEK WEBSITE</span></p></div>
    </a>';
    echo '<a class="vestiging" id="vestiging1" href="https://annexbiosleidscherijn.gluwebsite.nl?id='. $id .'">
        <img class="foto_vestiging" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpIz3GryzUBx3wsZlI5bGqv2x5VW6xfuuhIPM75VmU4Q&s" alt="foto van de film">
        <h2 class="naam_vestiging">leidscherijn</h2>
        <p class="locatie_vestiging">Rijksstraatweg 42, 3223 KA</p>
        <div class="button_naarvestiging" style="background-color: #B97D46;"><span>BEZOEK WEBSITE</span></p></div>
    </a>';
    echo '<a class="vestiging" id="vestiging1" href="https://annexbiosbreukelen.gluwebsite.nl?id='. $id .'">
        <img class="foto_vestiging" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpIz3GryzUBx3wsZlI5bGqv2x5VW6xfuuhIPM75VmU4Q&s" alt="foto van de film">
        <h2 class="naam_vestiging">breukelen</h2>
        <p class="locatie_vestiging">Rijksstraatweg 42, 3223 KA</p>
        <div class="button_naarvestiging" style="background-color: #B97D46;"><span>BEZOEK WEBSITE</span></p></div>
    </a>';
    echo '<a class="vestiging" id="vestiging1" href="https://annexbiosmontfoort.gluwebsite.nl?id='. $id .'">
        <img class="foto_vestiging" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpIz3GryzUBx3wsZlI5bGqv2x5VW6xfuuhIPM75VmU4Q&s" alt="foto van de film">
        <h2 class="naam_vestiging">montfoort</h2>
        <p class="locatie_vestiging">Rijksstraatweg 42, 3223 KA</p>
        <div class="button_naarvestiging" style="background-color: #B97D46;"><span>BEZOEK WEBSITE</span></p></div>
    </a>';
    ?>


    <div class="vestiging">
        <h2 class="naam_overigevestigingen">WETEN WAAR WIJ NOG <br> MEER KOMEN?</h2>
        <p class="teskt_overigevestigingen">Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore alias voluptatibus quaerat?</p>
        <div class="button_overigevestigingen">BEKIJK NIEUWE PROJECTEN</div>
    </div>
</div>
<footer id="footer">
    <div class="footer_div1">
        <img class="logo_footer" src="./assets/logo/MicrosoftTeams-image.png" alt="logo">
        <div class="footer_tekstcontainer">
            <p class="footer_tekst">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus! Facilis culpa excepturi commodi, accusantium laborum voluptas vero quas autem aliquam suscipit ipsum esse explicabo, veniam nihil eos eum eligendi.</p>
        </div>
        <div class="leestmeer">LEES MEER</div>
    </div>
    <div class="footer_div2">
        <h2 class="navigeer_tekst">NAVIGEER</h2>
        <ul>
            <li class="list_item">Werken bij</li>
            <li class="list_item">Veelgestelde vragen</li>
            <li class="list_item">Vestigingen</li>
            <li class="list_item">Contact</li>
        </ul>
    </div>
    <div class="footer_div3">
        <h2 class="volg_ons">VOLG ONS</h2>
        <div class="icons">
            <i class="footer_icon">X</i>
            <i class="footer_icon">X</i>
            <i class="footer_icon">X</i>
        </div>
    </div>
</footer>
<div class="voorwaarden"><p class="laatsetekst">Voorwaarden | Privacy beleid | Cookie disclaimer</p></div>
</body>
</html>