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
                  chmod +x ./add_components.sh
                  ./add_components.sh
                ; break;;

                [Nn]* )
                  chmod +x ./barebones.sh
                  ./barebones.sh; exit;;

                * ) echo "Please answer yes or no.";;
        esac
done

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



  <h1>Hello</h1>

<script src="script.js"></script>
</body>
</html>' > index.html

echo "------------------ PROJET CREER AVEC SUCCES ------------------"

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
" > style.css

code .
