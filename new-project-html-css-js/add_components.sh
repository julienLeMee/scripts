while true; do
    read -p "
##############################
##############################

Navbar
Cards
Footer?

##############################
##############################

    >" yn
        case $yn in
                [Yy]* )
echo "------------------ CREATION DU SQUELETTE DE BASE HTML ------------------"

echo "------------------ LIER LE FICHIER CSS ------------------"
echo "------------------ LIER LE FICHIER JAVASCRIPT ------------------"

echo '<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <title>Document</title>
</head>

<body>
  <div class="navbar navbar-expand-sm navbar-light navbar-lewagon">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <img src="https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/logo.png" />
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Messages</a>
            </li>
            <li class="nav-item dropdown">
              <img class="avatar dropdown-toggle" id="navbarDropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" src="https://kitt.lewagon.com/placeholder/users/ssaunier" />
              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <a class="dropdown-item" data-turbo-method="delete" href="#">Log out</a>
              </div>
            </li>
            <!--li class="nav-item"-->
            <!--/li-->
        </ul>
      </div>
    </div>
  </div>
  <div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url(https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/breakfast.jpg)">
  Breakfast
  </div>
  <div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url(https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/breakfast.jpg)">
  Breakfast
  </div>
  <div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url(https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/breakfast.jpg)">
  Breakfast
  </div>

  <div class="footer">
    <div class="footer-links">
      <a href="#"><i class="fab fa-github"></i></a>
      <a href="#"><i class="fab fa-instagram"></i></a>
      <a href="#"><i class="fab fa-facebook"></i></a>
      <a href="#"><i class="fab fa-twitter"></i></a>
      <a href="#"><i class="fab fa-linkedin"></i></a>
    </div>
    <div class="footer-copyright">
      This footer is made with <i class="fas fa-heart"></i> at Le Wagon
    </div>
  </div>



  <h1>Hello</h1>

<script src="script.js"></script>
</body>
</html>' > index.html

echo "
.navbar-lewagon {
  justify-content: space-between;
  background: white;
}

.navbar-lewagon .navbar-collapse {
  flex-grow: 0;
}

.navbar-lewagon .navbar-brand img {
  width: 40px;
}

.card-category {
  background-size: cover;
  background-position: center;
  height: 180px;
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
  font-size: 24px;
  font-weight: bold;
  text-shadow: 1px 1px 3px rgba(0,0,0,0.2);
  border-radius: 5px;
  box-shadow: 0 0 15px rgba(0,0,0,0.2);
}

.footer {
  background: #F4F4F4;
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 100px;
  padding: 0px 50px;
  color: rgba(0,0,0,0.3);
}
.footer-links {
  display: flex;
  align-items: center;
}
.footer-links a {
  color: black;
  opacity: 0.15;
  text-decoration: none;
  font-size: 24px;
  padding: 0px 10px;
}
.footer-links a:hover {
  opacity: 1;
}
.footer .fa-heart {
  color: #D23333;
}
" > style.css; break;;

                [Nn]* )
                  chmod +x ./barebones.sh;
                  ../barebones.sh; exit;;

                * ) echo "Please answer yes or no.";;
        esac
done




echo "------------------ PROJET CREER AVEC SUCCES ------------------"

code .
