
<div class="container" id="container">
        <div class="form-container sign-up-container">

            <form  class="form-op" method="POST">
                <h1 class="FAST4">INCIAR SESIÓN</h1>
                
                <h4 class="usuario">Usuario:</h4>
                <label for="exampleInputText1"></label>
                <input  type="text" class="plate"  placeholder="" name="ingUsuario" id="exampleInputText1" required>

                <label for="exampleInputPassword1"></label>
                <h4 class=password>Contraseña:</h4>
                <input type="password" class="plapa" placeholder="" name="ingPassword" id="exampleInputPassword1" required>
                

                <br>
                <button class="FAT8" type="submit">Iniciar Sesión</button>
                <form class="form-login" action="controller/iniciarSesion.php" method="POST">
               
              </form>
                <?php
                    $login = new ControladorUsuarios();
                    $login -> ctrIngresoUsuario();
                ?>
            </form>
            
        </div>
        <div class="form-container sign-in-container">
            <form class="form-op" >
                <h1  class="FAST">ING_FAST</h1>
                <p class="FAST3"><b>"SISTEMA FACTURACION PARA PYMES <br>
                        <br> PYMES"</b></p>
            </form>
        </div>

    <div class="overlay-container">
        <div class="overlay">
        <div class="overlay-panel overlay-left">
                    <h1 class="FAST2">MÀS<br>INFORMACIÒN</h1>
                        <br>
                        <br>
                        <button class="ghost" id="signIn">Volver</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1 class="FAST2">BIENVENIDO</h1>
                    <br>
                    <br>
                    <button class="ghost" id="signUp">Iniciar Sesión</button>
                </div>
                
        </div>
    </div>
</div>



    <script type="text/javascript">
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('container');

    signUpButton.addEventListener('click', () => {
        container.classList.add("right-panel-active");
    });
    signInButton.addEventListener('click', () => {
        container.classList.remove("right-panel-active");
    });
    </script>
