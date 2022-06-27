	--insert
	--INSERT CIUDAD
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(1,'Lima');
		go
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(2,'Callao');
		go
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(3,'Arequipa');
		go
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(4,'Tacna');
		go
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(5,'Junin');
		go
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(6,'Loreto');
		go
	--INSERT TURNO
		INSERT INTO Turno(turno_id,turno_nombre,turno_horario)
		values(1,'MAÑANA','8:00 - 12:00');
		go
		INSERT INTO Turno(turno_id,turno_nombre,turno_horario)
		values(2,'TARDE','13:00 - 19:00');
		go
	--INSERT CLIENTE ORDEN
		INSERT INTO CLIENTE(cli_id,cli_nombre,cli_apellido,cli_identificacion,cli_sexo,cli_fechanac,cli_email,cli_telefono,cli_ruc,ciu_Id)
		VALUES(1,'Daniel','Figueroa','79213122','M',GETDATE(),'danielfiguero@gmail.com',92456781,2022091232,1);

	--INSERT ORDEN ASESORES
		INSERT INTO asesores(asr_id,asr_nombre,asr_apellido,asr_identificacion,asr_fechanac,asr_sexo,asr_email,asr_telefono,asr_sueldo,ciu_Id,turno_id)
		VALUES(1,'Marco','Caballero','73022690',GETDATE(),'M','marcoestrada@hotmail.com',92456781,2000,2,1);
	--INSERT EN ASESORIAS ORDEN
		INSERT INTO asesorias(ases_id,cli_id,asr_id,ases_fecha,ases_observ,estado)
		VALUES(1,2,2,GETDATE(),'La reunion se realizara a travez de este zoom: https://zoom.us/9293182731','ATENDIDO');