<?php require'connexion.php' ?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <link rel="stylesheet" href="css/front.css">
        <title>Front projet burger</title>
    </head>

    <body>
        <div class="container-fluid">

            <div class="row">
                <div class="entete bg-light w-100 text-center">
                    <button type="button" class="btn btn-lg mt-3 ml-3 bg-white text-dark text-center boutona">Admin</button>
                    <h2 class="mt-3">A'Burger'ticle</h2>
                    <button type="button" class="btn btn-lg mt-3 ml-3 bg-white text-dark text-center boutonb">Login</button>
                </div>
            </div>

            <div class="row">
                <img src="img/petitebanniere.png" class="bande" />
            </div>

            <div class="row">

                <div class="col-12 col-md-12 bg-light">
                    <ul class="list-unstyled d-flex flex-row justify-content-between align-self-center w-100 menu">
                        <li><img class="w-100" src="img/logo.png" /></li>

                        <?php
    $requete=$pdo->prepare('SELECT * FROM categorie');
$requete->execute();
while ($donnee=$requete->fetch())
{
    echo'<li class="categorie"><a href="front_dynamique.php?id_categorie=' . $donnee['id_categorie'] . '">' . $donnee['nom'] . '</a></li>';
}

                        ?>

                        <!--<li class="categorie">International</li>
<li class="categorie">Categorie 2</li>-->

                        <li><img class="w-100" src="img/loupe.png" /></li>
                    </ul>
                </div>

            </div>

            <div class="row">
                <img src="img/banniere.png" class="banniere" />
            </div>

            <div class="row bg-light">

                <div class="col-12 col-md-8">

                    <div class="row">
                        <div class="fenetre">
                            <h3>A'Burger'ticle Kesako?</h3>
                            <div class="ml-5">
                                illum malis cillum de despicationes vidisse graviterque illustriora efflorescere 
                                esse fidelissimae iudicem consectetur despicationes comprehenderit est et minim 
                                officia magna multos an cohaerescant iis singulis reprehenderit non in aut 
                                cernantur de litteris quem laborum culpa varias illum vidisse arbitrantur fore 
                                imitarentur firmissimum dolore multos ita cernantur quibusdam tractavissent 
                                proident legam summis praesentibus et multos enim ab nisi ullamco reprehenderit 
                                dolore arbitrantur fidelissimae et pariatur velit elit quid fore o hic
                            </div>
                        </div>
                    </div>

                    <div class="row ligne d-flex justify-content-around mb-5">

                        <?php
                        $article = $_GET['id_article'];
                        $requete=$pdo->prepare('SELECT * FROM article WHERE id_article = ' . $article . '');
                        $requete->execute();
                        while ($donnee=$requete->fetch())
                        {
                            echo '<div class="col-12 col-md-12 article">
<div style="height: 600px; background-image: url(img/' . $donnee['photo'] . '); background-position: center; background-repeat: no-repeat; background-size: cover;">
</div>
<div class="texteart text-left bg-white">'
                                . $donnee['titre'] .
                                '<span class="piedart"><br />' . $donnee['date_article'] . '</span><br /><br />'
                                . $donnee['contenu'] .'<br /><br />
                                </div>
</div>';
                        }
                        ?>

                    </div>

                </div>

                <div class="col-12 col-md-3 bg-white fenetrelaterale">

                    <div class="burger text-center">Les burgers qui viennent de sortir du four</div>

                    <div class="row">

                        <?php
                        $requete=$pdo->prepare('SELECT titre, contenu, date_article FROM article WHERE id_article IN (9, 10, 11, 12)');
                        $requete->execute();
                        while ($donnee=$requete->fetch())
                        {
                            echo '<div class="dernierart mb-3">
                            <img src="img/bandeverticale.png" class="bandeverticale" />
                            <span class="titrederart">' . $donnee['titre'] . '<br /></span>'
                                . $donnee['contenu'] .
                                '<span class="piedart"><br /><br />' .$donnee['date_article'] . '</span>
                            </div>';
                        }
                        ?>

                    </div>

                </div>

            </div>

            <div class="row ligne d-flex justify-content-around mb-5">

                <?php

                $requete=$pdo->prepare('SELECT * FROM utilisateur JOIN commentaire ON utilisateur.id_utilisateur = commentaire.id_utilisateur JOIN article ON commentaire.id_article = article.id_article LIMIT 1');
                $requete->execute();
                while ($donnee=$requete->fetch())
                {
                    echo '<div class="col-12 col-md-12 mb-5">
                    <h3>Commentaires :</h3></div>
                    <div class="col-12 col-md-4">' . $donnee['nom'] . ' ' . $donnee['prenom'] . '<br />' . $donnee['date'] . '</div>
                    <div class="col-12 col-md-8">' . $donnee['commentaire'] . '</div>
                    <div class="col-12 mb-5"></div>';
                }
                ?>

            </div>

            <div class="row bg-light">
                <div class="col-12 col-md-12 m-4 articlesdumoment">
                    <div class="titreadm">Articles du moment</div>
                    <div class="row m-4 pb-2">
                        <div class="col-12 col-md-3 imageadm1"></div>
                        <div class="col-12 col-md-3 imageadm2"></div>
                        <div class="col-12 col-md-3 imageadm3"></div>
                        <div class="col-12 col-md-3 imageadm4"></div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-md-12 footer">
                    <ul class="list-unstyled d-flex flex-row justify-content-around align-self-center menufooter">
                        <li>Home</li>
                        <li>About</li>
                        <li>Connexion</li>
                        <li>Jobs</li>
                        <li>Legal</li>
                        <li>Contact</li>
                    </ul>
                </div>
            </div>



































            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
            </body>
        </html>