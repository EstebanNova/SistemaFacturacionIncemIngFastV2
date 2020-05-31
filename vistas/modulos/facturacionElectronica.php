<?php
if($_SESSION["facturacionElectronica"] == "off"){

  echo '<script>

    window.location = "inicio";

  </script>';

  return;

}

?>


<div class="content-wrapper">

  <iframe src="https://msfacturaelectdian.azurewebsites.net/como-facturar-1.html" width=100% height=1000  name="frmFacturacion" id="frmFacturacion" onload="loaded()"> </iframe>
</div>


<script type="text/javascript">

  frmFacturacion.document.getElementById("rfc").searchTerm.value = 'hello';

</script>