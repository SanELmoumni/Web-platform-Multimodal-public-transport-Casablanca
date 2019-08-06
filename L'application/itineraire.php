<?php
header('Content-type: text/html; charset=UTF-8');
?>
    <?php
    




$dsn = "mysql:dbname=plateforme casatramway;host=localhost";
$user = "root";
$password = "";


try {
    $conn = new PDO($dsn, $user, $password);
    
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}




?>



<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Casa Transport</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<link rel="shortcut icon" href="images/casatransport_logo.png" />
	</head>
	<body class="homepage">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<div id="header" class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.html">CASA TRANSPORT</a></h1>

						

					</div>

					<!-- Hero -->

						<section id="hero" class="container">
							<header id="entete">
								
								
								<h2> Saisissez les informations sur votre voyage !</h2><br><br>
								
                              <form method="POST">
										              <table width="25" border="0" align="center" cellpadding="10" cellspacing="10">
										               
										            <tr>
										                  <td height="30" class="body"><h2>Depart : </h2>  </td>
										                  <td height="30" colspan="2">
										                  <select name="dpr" class="body" style="width:500px;">
										                  <?php 
										                  
										                  $af="SELECT DISTINCT nom_station FROM station";
										                  $conn->query($af);
										                  $res_af=$conn->query($af);
										                  
										                  //trigger_error("requete incorrecte");
										                  
										                  
										                  
										                  
										                  
										                  while($row=$res_af->fetch()){
										                      if(isset($_POST['dpr'])){
										                          if ($row[0]==$_POST['dpr']){
										                              
										                              ?> <option value="<?php echo $row[0];?>"selected="selected"><?php echo $row[0];?></option> <?php }
              }      else 
                ?> <option value="<?php echo $row[0];?>"><?php echo $row[0];?></option> <?php 
        
                                     }
    

?>
				                  </select></td>
				                </tr>
				                <tr> <td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</td></tr>
				                
				               <tr>
				                  <td height="30" class="body"><h2>Arrivee : </h2></td>
				                  <td height="30" colspan="2">
				                  <select name="arv" class="body" style="width:500px;">
				                  <?php 
  $af="SELECT DISTINCT nom_station FROM station";
        $conn->query($af);
        $res_af=$conn->query($af);
        
            //trigger_error("requete incorrecte");
            
      
            
            while($row=$res_af->fetch()){
                if(isset($_POST['arv'])){
                    if($row[0]==$_POST['arv']){
                        ?> <option value="<?php echo $row[0];?>"selected="selected"><?php echo $row[0];?></option> <?php }
                }
                else
                    ?> <option value="<?php echo $row[0];?>"><?php echo $row[0];?></option> <?php 
                                        
        
                                        }
									    
									



										                  




?>
										                  </select></td>
										                </tr>
										                

										              </table>

										                        
												
												&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
												&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
												&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
												<input type="submit" class="button" name="sub" value="Calculer" > <br><br><br>
												</form> 

				
												<?php






												if(isset($_POST['sub'])){



												echo "<table font-size='40%' border='3px' solid black;>
				<tr>
				<th>Station de d√©part </th>
				<th>Station d'arriv√©e</th>
				<th>Ligne </th>
				<th>Mode </th>
				<th>Dur√©e du trajet </th>
				</tr>";




												    //A GARDER JUSQUA LA FIN DU SCRIPT POUR RECUPERER LEUR NOM !
												    $dpr1=$_POST['dpr'];
												    $arv1=$_POST['arv'];
												    echo "<br><br>";
												    
												    
												    $dpr=$_POST['dpr'];
												    $arv=$_POST['arv'];
												    
												    
												    
												    $res=$conn->query("SELECT d.id_station,a.id_station
                                                    FROM station d,station a
                                                    WHERE d.nom_station='$dpr'
                                                    AND a.nom_station='$arv'");
												    $tab=$res->fetch();
												    
												    
												    $i=0;
												    $j=0;
												    $dpr=$tab[0];
												    $arv=$tab[1];
												    $cptd=0;
												    $courant[$i]=$dpr;
												    
												    
												    
												    
												    // PREMIER
												    
												    
												    while($courant[$i]!=$arv and $courant[$i]!=NULL){
												        $res_ls=$conn->query("SELECT station_dep,next_station,duree,ligne_id,mode_tr
                                                    FROM station_arret
                                                    WHERE station_dep=$courant[$i]");
								        
												        
												        $tab_ls=$res_ls->fetch();
												        $cptd+=$tab_ls[2];
												        
												        $i++;
												        $courant[$i]=$tab_ls[1];
												        
												        
												    }
												    
												    if ($courant[$i]==$arv)
												    {
												        echo "<td> $dpr1 </td> <td> $arv1 </td> <td>$tab_ls[3]</td> <td>$tab_ls[4]</td> <td>$cptd minutes</td>";
												        goto b;
												    }
												    else{
												       
												        goto a;
												    }
												    
												    
												    //SENS CONTRAIRE EN CHERCHANT CORRESPONDANCE
												    a:
												    $i=0;
												    $j=0;
												    $cptd=0;
												    $courant[$i]=$dpr;
												    while($courant[$i]!=$arv and $courant[$i]!=NULL){
												        if($courant[$i]==$arv)
												        {
												            echo "<tr><td> $dpr1 </td> <td> $arv1 </td> <td>$tab_ls[3]</td> <td>$tab_ls[4]</td> <td>$cptd minutes</td></tr>";
												            goto b;
												        }
												        $res_lk=$conn->query("SELECT next_station,station_dep,duree,ligne_id,mode_tr
                                                    FROM station_arret
                                                    WHERE next_station=$courant[$i]");
												        
												        $nbrlignes=$res_lk->rowCount();
												        
												        $nom_st=$conn->query("SELECT nom_station FROM station WHERE id_station=$courant[$i]");
												        $tab_nom=$nom_st->fetch();
												        $naame=$tab_nom[0];
												       
												        if ($nbrlignes!=1){
												            
												            echo "<tr><td> $dpr1 </td> <td> $naame </td> <td>$tab_ls[3]</td> <td>$tab_ls[4]</td> <td>$cptd minutes</td></tr>";
												            while($tab_lk=$res_lk->fetch()){
												                $courant[$i]=$tab_lk[1];
												                $kl=0;
												                while($courant[$i]!=NULL and $courant[$i]!=$arv){
												                    
												                    $res_2=$conn->query("SELECT next_station,station_dep,duree,ligne_id,mode_tr
                                                                     FROM station_arret
                                                                     WHERE next_station=$courant[$i]");
												                    $kl+=$tab_lk[2];
												                    
												                    $tab_2=$res_2->fetch();
												                    
												                    $i++;
												                    $courant[$i]=$tab_2[1];
												                    
												                    if($courant[$i]==$arv) {
                                                                        
												                        $cptd-=$kl;
												                   echo "<tr><td> $naame </td> <td> $arv1 </td> <td>$tab_ls[3]</td> <td>$tab_ls[4]</td><td>$cptd minutes</td></tr>";
												                        //pt etre ajouter ici la station de correspondance et finale
												                        
												                        
												                        goto b;
												                    }
												                    
												                }
												            } // Fin 2eme while
												            
												        }
												        // ICI SI JE N'AI TrouvÈ qu'une seule ligne, c‡d je ne suis pas une correspondance !
												        else {
												            $tab_lk=$res_lk->fetch();
												            $cptd+=$tab_lk[2];
												            $i++;
												            $courant[$i]=$tab_lk[1];
												           
												            if($courant[$i]==$arv) {
												                echo "<td> $dpr1 </td> <td> $arv1 </td> <td>$tab_ls[3]</td> <td>$tab_ls[4]</td> <td>$cptd minutes</td>";
												                goto b;
												            }
												        }
												        // FIN cas contraire
												    }
												    
												    
												    
												    
												    
												    
												    if($courant[$i]==$arv){
												        echo "<td> $dpr1 </td> <td> $arv1 </td> <td>$tab_ls[3]</td> <td>$tab_ls[4]</td> <td>$cptd minutes</td>";
												        goto b;
												        
												    }
												    else {
												        
												        goto c;
												    }
												    
												    
												    
												    
												    
												    
												    
												    c:
												    // DEBUT TEST CORRESPONDANCES
												    $courant[$i]=$dpr;
												    
												    while($courant[$i]!=$arv and $courant[$i]!=NULL){
												        
												        $res_lk=$conn->query("SELECT next_station,station_dep,duree,ligne_id,mode_tr
                                                    FROM station_arret
                                                    WHERE next_station=$courant[$i]");
												        $nbrlignes=$res_lk->rowCount();       //Nombre de lignes retournÈes
												        // RES_LK   : LA REQUETE 1 DE SELECTION DE LA STATION DRPT
												        // TAB_LK   : LE TABLEAU DE RES_LK
												        // TAB_2    : LE TABLEAU DES PREMIERES CORRESPONDANCES
												        
												        if($courant[$i]==$arv) {
												            echo "<td> $dpr1 </td> <td> $arv1 </td> <td>$tab_ls[3]</td> <td>$tab_ls[4]</td> <td>$cptd minutes</td>";
												            goto b;}
												            
												            if ($nbrlignes!=1){
												                
												                while($tab_lk=$res_lk->fetch() and $tab_2[$j]!=$arv){
												                    $tab_2[0]=$tab_lk[1];
												                    
												                    while($tab_2[$j]!=NULL and $tab_2[$j]!=$arv){
												                        
												                        $res_2=$conn->query("SELECT next_station,station_dep,duree,ligne_id,mode_tr
                                                    FROM station_arret
                                                    WHERE next_station=$tab_2[$j]");
												                        $tab_res2=$res_2->fetch();
												                        $j++;
												                        $tab_2[$j]=$tab_res2[1];
												                        $cptd+=$tab_res2[2];
												                        if($tab_2[$j]==$arv) {
												                            echo "<td> $dpr1 </td> <td> $arv1 </td> <td>$tab_ls[3]</td> <td>$tab_ls[4]</td> <td>$cptd minutes</td>";
												                            goto b;}
												                    }
												                }  // Fin 2eme while
												                
												            } // Fin de   if (nbrLignes > 1)
												            else {
												                $tab_lk=$res_lk->fetch();
												                $cptd+=$tab_lk[2];
												                $i++;
												                $courant[$i]=$tab_lk[1];
												                if($courant[$i]==$arv) {
												                    echo "<td> $dpr1 </td> <td> $arv1 </td> <td>$tab_ls[3]</td> <td>$tab_ls[4]</td> <td>$cptd minutes</td>";
												                    goto b;
												                }
												            }
												            
												    }
												    
												    
												    
												    
												    
												    
												    
												    
												    //    premier sens :
												    
												    
												    
												    
												    
												    
												    
												    
												}
												
												b:
												
												
												
												?>

                                	

								</table>
							</header>



	



							


</div>





						</section>


				</div>







			<!-- Features 1 -->
				

			<!-- Features 2 -->
				

			<!-- Footer -->
				<div id="footer-wrapper">
					<div id="footer" class="container">
						<header class="major">
							<h2>Contactez-nous</h2>
							<p>Si vous rencontrez un probl√®me quelconque,<br />
							n'h√©sitez pas de nous le mentionner.</p>
						</header>
						<div class="row">
							<section class="6u 12u(narrower)">
								<form method="post" action="#">
									<div class="row 50%">
										<div class="6u 12u(mobile)">
											<input name="name" placeholder="Nom" type="text" />
										</div>
										<div class="6u 12u(mobile)">
											<input name="email" placeholder="Email" type="text" />
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<textarea name="message" placeholder="Message"></textarea>
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<ul class="actions">
												<li><input type="submit" value="Envoyer" /></li>
												<li><input type="reset" value="Effacer Message" /></li>
											</ul>
										</div>
									</div>
								</form>
							</section>
							<section class="6u 12u(narrower)">
								<div class="row 0%">
									<ul class="divided icons 6u 12u(mobile)">
										<li class="icon fa-twitter"><a href="#"><span class="extra">twitter.com/</span>Casatransport</a></li>
										<li class="icon fa-facebook"><a href="#"><span class="extra">fb.com/</span>Casatransport</a></li>
									</ul>
									<ul class="divided icons 6u 12u(mobile)">
										<li class="icon fa-instagram"><a href="#"><span class="extra">instagram.com/</span>Casatransport</a></li>
										<li class="icon fa-youtube"><a href="#"><span class="extra">youtube.com/</span>Casatransport</a></li>
									</ul>
								</div>
							</section>
						</div>
					</div>
					<div id="copyright" class="container">
						<ul class="menu">
							<li>
							<img src="images/casatransport_logo.png" height="100" width="150"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<img src="images/casatram.png" height="100" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<img src="images/mdinabus.png" height="100" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							CASATRANSPORT&copy;
							   All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</div>

		</div>

		<!-- Scripts -->

			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>