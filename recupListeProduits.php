<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="UTF-8>">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	</head>
	<body class="container" style="margin-top:50px;">
		<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post" class="form-horizontal well">
			<div class="form-group">
				<label class="control-label col-md-2">Liste des produits : </label>
				<div class="col-md-8">
				<select class="form-control" name="produit">
					<option value="laptop">Laptop</option>
					<option value="telephone">Téléphone</option>
					<option value="lave-linge">Lave-linge</option>
					<option value="chauffage">Chauffage</option>
					<option value="ecouteur">Ecouteur</option>
				</select>
				</div>
			</div>
			<button type="submit" class="btn btn-danger" name='submit' style="margin-left:40px;">Envoyer</button>
		</form>
		<!--<img src="image.php" alt="monImagephp"/>-->
	</body>
</html>


<?php 
$product = "";
 if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
	try{
		$bdd = new PDO('mysql:host=localhost;dbname=entreprisetest1;charset=utf8','root','',array(
		PDO::ATTR_ERRMODE=> PDO::ERRMODE_EXCEPTION));
	
	}
	catch(Exception $error){

		die('Erreur de connexion à la BDD');
	}
	
		$req= $bdd->prepare("SELECT ProductName,UnitPrice,UnitsOnOrder,UnitsInStock FROM product WHERE ProductName= :produit") or die("je suis mort");
		
		if(!empty($_POST['produit'])){
			$product = valideInput($_POST['produit']);
			$bool = $req->execute(array('produit'=>$product));
			$donnees= $req->fetch(PDO::FETCH_ASSOC);
			echo "<table class='table table-bordered table-striped table-condensed'>
						<thead>
							<tr>
								<th>ProductName</th>
								<th>UnitPrice</th>
								<th>UnitsOnOrder</th>
								<th>UnitsInStock</th>
							</tr>
						</thead>
						<tbody><tr>";
			    foreach($donnees as $key=>$value){
					echo "<td>$value</td>";
			    }
			echo "</tr></tbody></table>";
		}else{
			 echo 'Veuillez saisi';
		}

 }
 	 function valideInput($data){
		 $rep=trim($data);
		 $to=htmlspecialchars($rep);
		 $fin=stripslashes($to);
		 return $fin;
	 }
	?>