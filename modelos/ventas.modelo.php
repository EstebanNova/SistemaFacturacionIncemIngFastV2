<?php

require_once "conexion.php";

class ModeloVentas{

	/*=============================================
	MOSTRAR VENTAS
	=============================================*/

	static public function mdlMostrarVentas($tabla, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item ORDER BY id ASC");

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetch();

		}else{

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id ASC");

			$stmt -> execute();

			return $stmt -> fetchAll();

		}
		
		$stmt -> close();

		$stmt = null;

	}


	/*=============================================
	MOSTRAR COTIZACIÓN
	=============================================*/

	static public function mdlMostrarCotizacion($cotizacion){

		if($cotizacion != null){

			$stmt = Conexion::conectar()->prepare("SELECT * 
													FROM ventas 
													WHERE id = ".$cotizacion."

													");

			$stmt -> bindParam(":$cotizacion", $cotizacion, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetch();

	
		}

	}

		/*=============================================
	MOSTRAR ULTIMO FOLIO
	=============================================*/


		static public function mdlMostrarUltimoFolio($tipoVenta){


			$stmt = Conexion::conectar()->prepare("SELECT codigo 
													FROM ventas 
													where Tipo_Venta=:$tipoVenta
													ORDER BY id asc");

			$stmt -> bindParam(":".$tipoVenta, $tipoVenta, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetchAll();

		$stmt -> close();

		$stmt = null;

	}


	/*=============================================
	REGISTRO DE VENTA
	=============================================*/

	static public function mdlIngresarVenta($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(
			codigo
			, id_cliente
			, id_vendedor
			, productos
			, impuesto
			, neto
			, total
			, metodo_pago
			, tipo_venta
			, FechaVencimiento

			, cotizarA
			, plazoEntrega
			, codigoVenta
			, Observaciones


			) 
			VALUES (:codigo
			, :id_cliente
			, :id_vendedor
			, :productos
			, :impuesto
			, :neto
			, :total
			, :metodo_pago
			, :tipo_venta
			, :FechaVencimiento

			, :CotizarA
			, :plazoEntrega
			, :codigoVenta
			, :Observaciones

		)");

		$stmt->bindParam(":codigo", $datos["codigo"], PDO::PARAM_INT);
		$stmt->bindParam(":id_cliente", $datos["id_cliente"], PDO::PARAM_INT);
		$stmt->bindParam(":id_vendedor", $datos["id_vendedor"], PDO::PARAM_INT);
		$stmt->bindParam(":productos", $datos["productos"], PDO::PARAM_STR);
		$stmt->bindParam(":impuesto", $datos["impuesto"], PDO::PARAM_STR);
		$stmt->bindParam(":neto", $datos["neto"], PDO::PARAM_STR);
		$stmt->bindParam(":total", $datos["total"], PDO::PARAM_STR);
		$stmt->bindParam(":tipo_venta", $datos["tipoVenta"], PDO::PARAM_STR);
		$stmt->bindParam(":metodo_pago", $datos["metodo_pago"], PDO::PARAM_STR);
		$stmt->bindParam(":FechaVencimiento", $datos["FechaVencimiento"], PDO::PARAM_STR);

		$stmt->bindParam(":plazoEntrega", $datos["plazoEntrega"], PDO::PARAM_STR);
		$stmt->bindParam(":CotizarA", $datos["CotizarA"], PDO::PARAM_STR);
		$stmt->bindParam(":codigoVenta", esCero($datos["codigoVenta"]), PDO::PARAM_STR);
		$stmt->bindParam(":Observaciones", ($datos["Observaciones"]), PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			$arr = $stmt ->errorInfo();
			$arr[3]="ERROR";
			return $arr[2];
		
		
		}

		$stmt->close();
		$stmt = null;

	}

	/*=============================================
	EDITAR VENTA
	=============================================*/

	static public function mdlEditarVenta($tabla, $datos){

		
		$stmt = Conexion::conectar()->prepare("UPDATE $tabla 
												SET  id_cliente = :id_cliente
												, id_vendedor = :id_vendedor
												, productos = :productos
												, impuesto = :impuesto
												, neto = :neto
												, total= :total
												, metodo_pago = :metodo_pago 

												, Tipo_Venta = :tipo_venta 
												, FechaVencimiento = :FechaVencimiento 
												, cotizarA = :CotizarA
												, Observaciones = :Observaciones  
												, plazoEntrega = :plazoEntrega 
												WHERE codigo = :codigo");




		$stmt->bindParam(":codigo", $datos["codigo"], PDO::PARAM_INT);
		$stmt->bindParam(":id_cliente", $datos["id_cliente"], PDO::PARAM_INT);
		$stmt->bindParam(":id_vendedor", $datos["id_vendedor"], PDO::PARAM_INT);
		$stmt->bindParam(":productos", $datos["productos"], PDO::PARAM_STR);
		$stmt->bindParam(":impuesto", $datos["impuesto"], PDO::PARAM_STR);
		$stmt->bindParam(":neto", $datos["neto"], PDO::PARAM_STR);
		$stmt->bindParam(":total", $datos["total"], PDO::PARAM_STR);
		$stmt->bindParam(":metodo_pago", $datos["metodo_pago"], PDO::PARAM_STR);
		
		$stmt->bindParam(":tipo_venta", $datos["tipoVenta"], PDO::PARAM_STR);
		$stmt->bindParam(":FechaVencimiento", $datos["FechaVencimiento"], PDO::PARAM_STR);
		$stmt->bindParam(":Observaciones", $datos["Observaciones"], PDO::PARAM_STR);
		$stmt->bindParam(":plazoEntrega", $datos["plazoEntrega"], PDO::PARAM_STR);
		$stmt->bindParam(":CotizarA", $datos["CotizarA"], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{
			$arr = $stmt ->errorInfo();
			$arr[3]="ERROR";
			return $arr[2];
		
		}

		$stmt->close();
		$stmt = null;

	}

	/*=============================================
	ELIMINAR VENTA
	=============================================*/

	static public function mdlEliminarVenta($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

		$stmt -> bindParam(":id", $datos, PDO::PARAM_INT);

		if($stmt -> execute()){

			return "ok";
		
		}else{

			return "error";	

		}

		$stmt -> close();

		$stmt = null;

	}

	
	/*=============================================
	RANGO FECHAS
	=============================================*/	

	static public function mdlRangoFechasVentas($tabla, $fechaInicial, $fechaFinal,$tipoDocumento){

		if($fechaInicial == null){

			$stmt = Conexion::conectar()->prepare("SELECT * 
													,(

															case when a.Tipo_Venta='COT' then
																case when (select b.codigo from ventas b where b.Tipo_Venta='VEN' and b.codigoVenta=a.codigo)>0 then
																		 (select b.codigo from ventas b where b.Tipo_Venta='VEN' and b.codigoVenta=a.codigo)
																		else
																		'GENERAR VENTA'
																end
																
															end	
																) as codigoVenta1
													FROM $tabla a
													where Tipo_Venta='".$tipoDocumento."'
													ORDER BY id desc");

			$stmt -> execute();

			return $stmt -> fetchAll();	


		}else if($fechaInicial == $fechaFinal){

			$stmt = Conexion::conectar()->prepare("SELECT * 
															,(

															case when a.Tipo_Venta='COT' then
																case when (select b.codigo from ventas b where b.Tipo_Venta='VEN' and b.codigoVenta=a.id)>1 then
																		 (select b.codigo from ventas b where b.Tipo_Venta='VEN' and b.codigoVenta=a.id)
																		else
																		'GENERAR VENTA'
																end
																
															end	
															) as codigoVenta1
														FROM $tabla a
														WHERE fecha like '%$fechaFinal%' and Tipo_Venta='$tipoDocumento'");

			$stmt -> bindParam(":fecha", $fechaFinal, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetchAll();

		}else{

			$fechaActual = new DateTime();
			$fechaActual ->add(new DateInterval("P1D"));
			$fechaActualMasUno = $fechaActual->format("Y-m-d");

			$fechaFinal2 = new DateTime($fechaFinal);
			$fechaFinal2 ->add(new DateInterval("P1D"));
			$fechaFinalMasUno = $fechaFinal2->format("Y-m-d");

			if($fechaFinalMasUno == $fechaActualMasUno){

				$stmt = Conexion::conectar()->prepare("SELECT * 
															,(

															case when a.Tipo_Venta='COT' then
																case when (select b.codigo from ventas b where b.Tipo_Venta='VEN' and b.codigoVenta=a.id)>1 then
																		 (select b.codigo from ventas b where b.Tipo_Venta='VEN' and b.codigoVenta=a.id)
																		else
																		'GENERAR VENTA'
																end
																
															end	
															) as codigoVenta1
														FROM $tabla  a
														WHERE a.fecha 
														BETWEEN '$fechaInicial' AND '$fechaFinalMasUno' 
														and a.Tipo_Venta='$tipoDocumento'");

			}else{


				$stmt = Conexion::conectar()->prepare("SELECT * 


					FROM $tabla WHERE fecha BETWEEN '$fechaInicial' AND '$fechaFinal' and Tipo_Venta='$tipoDocumento'");

			}
		
			$stmt -> execute();

			return $stmt -> fetchAll();

		}

	}


		/*=============================================
	RANGO FECHAS
	=============================================*/	

	static public function mdlRangoFechasVentasCotizaciones($tabla, $fechaInicial, $fechaFinal){

		if($fechaInicial == null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla where tipo_venta='COT' ORDER BY id ASC");

			$stmt -> execute();

			return $stmt -> fetchAll();	


		}else if($fechaInicial == $fechaFinal){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha like '%$fechaFinal%' and tipo_venta='COT'");

			$stmt -> bindParam(":fecha", $fechaFinal, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetchAll();

		}else{

			$fechaActual = new DateTime();
			$fechaActual ->add(new DateInterval("P1D"));
			$fechaActualMasUno = $fechaActual->format("Y-m-d");

			$fechaFinal2 = new DateTime($fechaFinal);
			$fechaFinal2 ->add(new DateInterval("P1D"));
			$fechaFinalMasUno = $fechaFinal2->format("Y-m-d");

			if($fechaFinalMasUno == $fechaActualMasUno){

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha BETWEEN '$fechaInicial' AND '$fechaFinalMasUno'");

			}else{


				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha BETWEEN '$fechaInicial' AND '$fechaFinal'");

			}
		
			$stmt -> execute();

			return $stmt -> fetchAll();

		}

	}

	/*=============================================
	SUMAR EL TOTAL DE VENTAS
	=============================================*/

	static public function mdlSumaTotalVentas($tabla){	

		$stmt = Conexion::conectar()->prepare("SELECT SUM(neto) as total FROM $tabla where tipo_venta='VEN'");

		$stmt -> execute();

		return $stmt -> fetch();


	}



	/*=============================================
	INICIAR TRANSACCION
	=============================================*/

	static public function mdlTransaccion(){	

		$stmt = Conexion::conectar()->prepare("START TRANSACTION;;");

		$stmt -> execute();

		return $stmt -> fetch();


	}

	/*=============================================
	 COMMIT
	=============================================*/

	static public function mdlCommit(){	

		$stmt = Conexion::conectar()->prepare("COMMIT;");

		$stmt -> execute();

		return $stmt -> fetch();


	}


	/*=============================================
	INICIAR ROLLBACK
	=============================================*/

	static public function mdlRollback(){	

		$stmt = Conexion::conectar()->prepare("ROLLBACK;");

		$stmt -> execute();

		return $stmt -> fetch();


	}

	
}