using System;
using System.Collections.Generic;
using System.Text;
using CapaModelo;
using System.Data;
using System.Data.SqlClient;

namespace CapaServicio
{
    public class RegistrarAsesorService : GeneralService
    {
        public void registrarAsesor(AsesorModel asesor)
        {
            // Mensajes por defecto
            this.Estado = 1;
            this.Mensaje = "Proceso ejecutado correctamente";
            // Proceso General
            using (SqlConnection con = new SqlConnection(CadenaConexion))
            {
                try
                {
                    // La conexión
                    con.Open();
                    // El comando
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "usp_registrar_asesor";
                    // Parametros
                    cmd.Parameters.Add("@p_asr_nombre", SqlDbType.VarChar,30).Value = asesor.Nombre;
                    cmd.Parameters.Add("@p_asr_apepaterno", SqlDbType.VarChar, 30).Value = asesor.ApePaterno;
                    cmd.Parameters.Add("@p_asr_apematerno", SqlDbType.VarChar, 30).Value = asesor.ApeMaterno;
                    cmd.Parameters.Add("@p_asr_nroidentificacion", SqlDbType.Char, 8).Value = asesor.NroIdentificacion;
                    cmd.Parameters.Add("@p_asr_fechanac", SqlDbType.Date).Value = asesor.FechaNac;
                    cmd.Parameters.Add("@p_asr_sexo", SqlDbType.VarChar, 10).Value = asesor.Sexo;
                    cmd.Parameters.Add("@p_asr_email", SqlDbType.VarChar, 50).Value = asesor.Email;
                    cmd.Parameters.Add("@p_asr_telefono", SqlDbType.VarChar, 15).Value = asesor.Telefono;
                    cmd.Parameters.Add("@p_asr_sueldo", SqlDbType.Decimal).Value = asesor.Sueldo;
                    cmd.Parameters.Add("@p_ciu_id", SqlDbType.Int).Value = asesor.CiudadID;
                    cmd.Parameters.Add("@p_turno_id", SqlDbType.Int).Value = asesor.TurnoID;
                    cmd.Parameters.Add("@p_msg ", SqlDbType.VarChar, 100).Direction = ParameterDirection.Output;
                    cmd.Parameters.Add("@p_estado", SqlDbType.Int).Direction = ParameterDirection.Output;
                    // Ejecutar el procedimiento
                    cmd.ExecuteNonQuery();
                    this.Estado = Convert.ToInt32(cmd.Parameters["@p_estado"].Value);
                    this.Mensaje = "Asesor registrado exitosamente.";
                    cmd.Dispose();
                }
                catch (Exception e)
                {
                    this.Estado = -1;
                    this.Mensaje = "Hay un error.";
                }

            }
        }

        public String obtenerIDCiudad(String ciudad)
        {
            String idciudad = "";
            String codigosql = "select ciu_Id from Ciudad where ciu_nombre = '" + ciudad+"' ";
            using (SqlConnection con = new SqlConnection(CadenaConexion))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(codigosql,con);
                    idciudad = Convert.ToString(cmd.ExecuteScalar());
                    cmd.Dispose();
                }
                catch
                {
                    this.Estado = -1;
                    this.Mensaje = "Hay un error.";
                }
            }
            
            return idciudad;
        }
    }
}
